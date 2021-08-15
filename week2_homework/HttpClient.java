package com.siho.jvm;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

public class HttpClient {

    public static void main(String[] args) throws IOException {
        URL url = new URL("http://localhost:8088/api/hello");
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setDoOutput(true);
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Accept-Charset", "utf-8");
        conn.setConnectTimeout(3000);
        conn.setReadTimeout(3000);

        BufferedReader bufferedReader = null;
        bufferedReader = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
        StringBuilder sb = new StringBuilder();
        String output;
        while ((output = bufferedReader.readLine()) != null) {
            sb.append(output);
        }
        System.out.println(sb.toString());
    }

}
