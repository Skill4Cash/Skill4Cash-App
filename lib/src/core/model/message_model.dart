enum ChatMessageType{
  text,
  doc,
  picture,
}


class ChatMessage{
  final String text;
  final ChatMessageType messageType;
  final bool isSender;

  ChatMessage({
    this.text = "", 
    required this.messageType, 
    required this.isSender});
}

List demeChatMessages = [
  ChatMessage(
    text: "Hi adewale, i need your service",
    messageType: ChatMessageType.text,
    isSender: true,
  ),
  ChatMessage(
    text: "Hello, How may we help you?",
    messageType: ChatMessageType.text,
    isSender: false,
  ),
  ChatMessage(
    text: "I need assistance on this, cna you help me out, How much does it cost? And i will like to know when you will be available",
    messageType: ChatMessageType.text,
    isSender: true,
  ),
  ChatMessage(
    text: "",
    messageType: ChatMessageType.picture,
    isSender: true,
  ),
  ChatMessage(
    text: "Ok, where do you stay, so i will need to caslculate expenses vovered along th eline because all this matters",
    messageType: ChatMessageType.text,
    isSender: false,
  ),
  ChatMessage(
    text: "This looks great man!!",
    messageType: ChatMessageType.text,
    isSender: false,
  ),
  ChatMessage(
    text: "Glad you like it",
    messageType: ChatMessageType.text,
    isSender: true,
  ),
];

class ConversationMessage{
  final String name;
  final String message;
  final String image;
  final String time;

  ConversationMessage({
    required this.message,
    required this.name,
    required this.image,
    required this.time
  });
}

List<ConversationMessage> conversationmessageList = [
  ConversationMessage(message: "Yes, that's going to work", name: "Wonderous Creations Clothiers", image: "sp_1.jpg", time: "8.12"),
  ConversationMessage(message: "Yes, that's going to work", name: "Wonderous Creations Clothiers", image: "sp_1.jpg", time: "8.12"),
  ConversationMessage(message: "Yes, that's going to work", name: "Wonderous Creations Clothiers", image: "sp_1.jpg", time: "8.12"),
  ConversationMessage(message: "Yes, that's going to work", name: "Wonderous Creations Clothiers", image: "sp_1.jpg", time: "8.12"),
  ConversationMessage(message: "Yes, that's going to work", name: "Wonderous Creations Clothiers", image: "sp_1.jpg", time: "8.12"),
  ConversationMessage(message: "Yes, that's going to work", name: "Wonderous Creations Clothiers", image: "sp_1.jpg", time: "8.12"),
  ConversationMessage(message: "Yes, that's going to work", name: "Wonderous Creations Clothiers", image: "sp_1.jpg", time: "8.12"),
  ConversationMessage(message: "Yes, that's going to work", name: "Wonderous Creations Clothiers", image: "sp_1.jpg", time: "8.12"),
  ConversationMessage(message: "Yes, that's going to work", name: "Wonderous Creations Clothiers", image: "sp_1.jpg", time: "8.12"),
  ConversationMessage(message: "Yes, that's going to work", name: "Wonderous Creations Clothiers", image: "sp_1.jpg", time: "8.12"),
  ConversationMessage(message: "Yes, that's going to work", name: "Wonderous Creations Clothiers", image: "sp_1.jpg", time: "8.12"),
  ConversationMessage(message: "Yes, that's going to work", name: "Wonderous Creations Clothiers", image: "sp_1.jpg", time: "8.12"),
  ConversationMessage(message: "Yes, that's going to work", name: "Wonderous Creations Clothiers", image: "sp_1.jpg", time: "8.12"),
  ConversationMessage(message: "Yes, that's going to work", name: "Wonderous Creations Clothiers", image: "sp_1.jpg", time: "8.12"),
  ConversationMessage(message: "Yes, that's going to work", name: "Wonderous Creations Clothiers", image: "sp_1.jpg", time: "8.12"),
  ConversationMessage(message: "Yes, that's going to work", name: "Wonderous Creations Clothiers", image: "sp_1.jpg", time: "8.12"),
  ConversationMessage(message: "Yes, that's going to work", name: "Wonderous Creations Clothiers", image: "sp_1.jpg", time: "8.12"),
  ConversationMessage(message: "Yes, that's going to work", name: "Wonderous Creations Clothiers", image: "sp_1.jpg", time: "8.12"),
  ConversationMessage(message: "Yes, that's going to work", name: "Wonderous Creations Clothiers", image: "sp_1.jpg", time: "8.12"),
  ConversationMessage(message: "Yes, that's going to work", name: "Wonderous Creations Clothiers", image: "sp_1.jpg", time: "8.12"),
  ConversationMessage(message: "Yes, that's going to work", name: "Wonderous Creations Clothiers", image: "sp_1.jpg", time: "8.12"),
  ConversationMessage(message: "Yes, that's going to work", name: "Wonderous Creations Clothiers", image: "sp_1.jpg", time: "8.12"),
];
