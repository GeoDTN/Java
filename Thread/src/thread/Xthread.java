package thread;

public class Xthread {

		public static void main(String[] args) {
			Thread thread1 = new Thread(new ThreadExample(), "thread1");
			Thread thread2 = new Thread(new ThreadExample(), "thread2");
			//The below 2 threads are assigned default names
			Thread thread3 = new ThreadExample();
			Thread thread4 = new ThreadExample();
			Thread thread5 = new ThreadExample("thread5");
			//Start the threads
			thread1.start();
			thread2.start();
			thread3.start();
			thread4.start();
			try {
		//The sleep() method is invoked on the main thread to cause a one second delay.
				Thread.currentThread().sleep(1000);
			} catch (InterruptedException e) {
			}
			//Display info about the main thread
			System.out.println(Thread.currentThread());
		}
	}
