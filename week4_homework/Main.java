package java0.conc0304;

import java.util.concurrent.*;

public class Main {

    public static void main(String[] args) {


        try {
            // 第一种方式，通过线程方式执行
            FutureTask futureTask = new FutureTask(new MyThread3());
            new Thread(futureTask).start();
            System.out.println(futureTask.get());

            // 第二种方式，通过线程池方式执行
            // 还有Excutors.newSingleThreadExecutor(int)、Excutors.newCachedThreadPool(int)、Excutors.newScheduledThreadPool(int)
            // Excutors.newSingleThreadScheduledExecutor(int)、Excutors.newWorkStealingPool(int)等方式
            ExecutorService service = Executors.newFixedThreadPool(5);
            FutureTask futureTask2 = (FutureTask) service.submit(new MyThread3());
            System.out.println(futureTask2.get());

            // 第三种方式，通过自定义线程池方式执行
            ExecutorService myThreadPool = new ThreadPoolExecutor(2, 5, 5L, TimeUnit.SECONDS, new LinkedBlockingQueue<>(5));
            FutureTask futureTask3 = (FutureTask) myThreadPool.submit(new MyThread3());
            System.out.println(futureTask3.get());

        } catch (Exception e) {
            System.out.println(e);
        }
    }

}
