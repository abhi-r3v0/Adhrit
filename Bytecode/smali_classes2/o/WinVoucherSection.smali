.class final Lo/WinVoucherSection;
.super Lo/WinRaffleTicketResponseJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/WinRaffleTicketResponseJsonAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lo/WinRaffleTicketResponseJsonAdapter;-><init>(ILjava/lang/String;Ljava/lang/Object;Lo/WinResponse;)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lo/WinRaffleTicketResponseJsonAdapter;->extraCallback()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final synthetic onPostMessage(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lo/WinRaffleTicketResponseJsonAdapter;->extraCallback()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lo/WinRaffleTicketResponseJsonAdapter;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onPostMessage(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lo/WinRaffleTicketResponseJsonAdapter;->extraCallback()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lo/WinRaffleTicketResponseJsonAdapter;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
