package io.manasobi.utils;

import com.mysema.codegen.SimpleCompiler;
import com.querydsl.apt.jpa.JPAAnnotationProcessor;

import javax.tools.JavaCompiler;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by manasobi on 2017-01-21.
 */
public class JpaUtils {

    private static JavaCompiler compiler = new SimpleCompiler();

    public static void generateQueryDSL(String packageName, String fileName) {

        String srcPath = ContextUtils.getCurrentDir() + "src/main/java/" + packageName.replace(".", "/") + "/" + fileName;

        List<String> options = new ArrayList<>();

        options.add("-s");
        options.add(ContextUtils.getCurrentDir() + "src/main/querydsl");
        options.add("-proc:only");
        options.add("-processor");
        options.add(JPAAnnotationProcessor.class.getName());
        options.add(srcPath);

        ByteArrayOutputStream out = new ByteArrayOutputStream();
        ByteArrayOutputStream err = new ByteArrayOutputStream();

        int result = compiler.run(null, out, err, options.toArray(new String[options.size()]));

        //Processor.elementCache.clear();

        if (result != 0) {
            try {
                String errorMsg = new String(err.toByteArray(), "UTF-8");
                throw new RuntimeException(errorMsg);
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }
    }

}

