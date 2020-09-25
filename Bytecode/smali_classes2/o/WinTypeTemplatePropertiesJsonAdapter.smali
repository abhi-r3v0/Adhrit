.class final Lo/WinTypeTemplatePropertiesJsonAdapter;
.super Lo/WinRaffleTicketResponseJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/WinRaffleTicketResponseJsonAdapter<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/Long;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lo/WinRaffleTicketResponseJsonAdapter;-><init>(ILjava/lang/String;Ljava/lang/Object;Lo/WinResponse;)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0}, Lo/WinRaffleTicketResponseJsonAdapter;->extraCallback()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final synthetic onPostMessage(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lo/WinRaffleTicketResponseJsonAdapter;->extraCallback()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lo/WinRaffleTicketResponseJsonAdapter;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onPostMessage(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lo/WinRaffleTicketResponseJsonAdapter;->extraCallback()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lo/WinRaffleTicketResponseJsonAdapter;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
