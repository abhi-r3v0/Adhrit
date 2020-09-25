.class public final Lo/getVersion;
.super Ljava/lang/Object;


# direct methods
.method public static onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lo/EmiScreenResponse$ChildCard;
    .locals 0

    invoke-static {}, Lo/EmiScreenResponse$ChildCard;->asBinder()Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;

    move-result-object p3

    invoke-virtual {p3, p1}, Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;)Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const-string p4, "type.googleapis.com/google.crypto.tink."

    if-eqz p3, :cond_0

    invoke-virtual {p4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, p2}, Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;->extraCallback(Ljava/lang/String;)Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;->onPostMessage(I)Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;->onNavigationEvent(Z)Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/String;)Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;

    move-result-object p0

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onPostMessage()Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object p0

    check-cast p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast p0, Lo/EmiScreenResponse$ChildCard;

    return-object p0
.end method
