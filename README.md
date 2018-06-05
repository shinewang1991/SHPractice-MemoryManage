#### iOS 引用计数原则
* 一个对象alloc, copy , new 。 retainCount = 1. retain + 1. release - 1. 要销毁一个对象，就需要让这个对象的retainCount = 0. 
