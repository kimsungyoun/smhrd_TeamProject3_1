package kr.or.smhrd.controller;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ChatbotController {

    private static final String OPENAI_API_KEY = "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"; // OpenAI API 키를 입력하세요.

    @GetMapping("/GPT")
    public String GPT() {
        return "GPT";
    }

    @PostMapping("/chat")
    public String chat(@RequestParam String userMessage, Model model) throws Exception {
        List<ChatMessage> messages = new ArrayList<>();
        messages.add(new ChatMessage("user", userMessage));

        String assistantResponse = getAssistantResponse(userMessage);

        messages.add(new ChatMessage("assistant", assistantResponse));

        model.addAttribute("messages", messages);

        return "GPT";
    }

    private String getAssistantResponse(String userMessage) throws Exception {
        CloseableHttpClient httpClient = HttpClients.createDefault();
        HttpPost httpPost = new HttpPost("https://api.openai.com/v1/engines/davinci/completions");

        String requestBody = "{\"prompt\":\"" + userMessage + "\",\"max_tokens\":50}";

        httpPost.setHeader("Authorization", "Bearer " + OPENAI_API_KEY);
        httpPost.setHeader("Content-Type", "application/json");
        httpPost.setEntity(new StringEntity(requestBody));

        HttpResponse response = httpClient.execute(httpPost);

        BufferedReader reader = new BufferedReader(new InputStreamReader(response.getEntity().getContent()));
        StringBuilder responseBody = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            responseBody.append(line);
        }

        return responseBody.toString();
    }
}

