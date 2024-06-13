#include <linux/init.h>
#include <linux/module.h>
#include <linux/fs.h>
#include <linux/uaccess.h>

#define DEVICE_NAME "mem_device"
#define BUF_LEN 80

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Your Name");
MODULE_DESCRIPTION("A simple memory writing module");

static int major_num;
static char device_buffer[BUF_LEN];
static struct class* device_class = NULL;
static struct device* device_device = NULL;

static ssize_t device_write(struct file *filp, const char *buffer, size_t len, loff_t *offset) {
    if (len > BUF_LEN) {
        len = BUF_LEN;
    }
    if (copy_from_user(device_buffer, buffer, len)) {
        return -EFAULT;
    }
    device_buffer[len] = '\0';
    printk(KERN_INFO "mem_device: received %zu characters from the user\n", len);
    return len;
}

static struct file_operations fops = {
    .owner = THIS_MODULE,
    .write = device_write,
};

static int __init device_init(void) {
    major_num = register_chrdev(0, DEVICE_NAME, &fops);
    if (major_num < 0) {
        printk(KERN_ALERT "mem_device failed to register a major number\n");
        return major_num;
    }
    printk(KERN_INFO "mem_device: registered correctly with major number %d\n", major_num);

    device_class = class_create(THIS_MODULE, DEVICE_NAME);
    if (IS_ERR(device_class)) {
        unregister_chrdev(major_num, DEVICE_NAME);
        printk(KERN_ALERT "Failed to register device class\n");
        return PTR_ERR(device_class);
    }
    printk(KERN_INFO "mem_device: device class registered correctly\n");

    device_device = device_create(device_class, NULL, MKDEV(major_num, 0), NULL, DEVICE_NAME);
    if (IS_ERR(device_device)) {
        class_destroy(device_class);
        unregister_chrdev(major_num, DEVICE_NAME);
        printk(KERN_ALERT "Failed to create the device\n");
        return PTR_ERR(device_device);
    }
    printk(KERN_INFO "mem_device: device class created correctly\n");
    return 0;
}

static void __exit device_exit(void) {
    device_destroy(device_class, MKDEV(major_num, 0));
    class_unregister(device_class);
    class_destroy(device_class);
    unregister_chrdev(major_num, DEVICE_NAME);
    printk(KERN_INFO "mem_device: goodbye from the module!\n");
}

module_init(device_init);
module_exit(device_exit);
