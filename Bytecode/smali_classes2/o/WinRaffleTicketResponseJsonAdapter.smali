.class public abstract Lo/WinRaffleTicketResponseJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final extraCallback:I

.field private final onMessageChannelReady:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/WinRaffleTicketResponseJsonAdapter;->extraCallback:I

    iput-object p2, p0, Lo/WinRaffleTicketResponseJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/WinRaffleTicketResponseJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->onNavigationEvent()Lo/WinTicketResponseJsonAdapter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/WinTicketResponseJsonAdapter;->ICustomTabsCallback(Lo/WinRaffleTicketResponseJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Object;Lo/WinResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo/WinRaffleTicketResponseJsonAdapter;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static ICustomTabsCallback(ILjava/lang/String;)Lo/WinRaffleTicketResponseJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lo/WinRaffleTicketResponseJsonAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lo/WinRaffleTicketResponseJsonAdapter;->onNavigationEvent(ILjava/lang/String;Ljava/lang/String;)Lo/WinRaffleTicketResponseJsonAdapter;

    move-result-object p0

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->onNavigationEvent()Lo/WinTicketResponseJsonAdapter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/WinTicketResponseJsonAdapter;->onPostMessage(Lo/WinRaffleTicketResponseJsonAdapter;)V

    return-object p0
.end method

.method public static onMessageChannelReady(ILjava/lang/String;)Lo/WinRaffleTicketResponseJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lo/WinRaffleTicketResponseJsonAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lo/WinRaffleTicketResponseJsonAdapter;->onNavigationEvent(ILjava/lang/String;Ljava/lang/String;)Lo/WinRaffleTicketResponseJsonAdapter;

    move-result-object p0

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->onNavigationEvent()Lo/WinTicketResponseJsonAdapter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/WinTicketResponseJsonAdapter;->onNavigationEvent(Lo/WinRaffleTicketResponseJsonAdapter;)V

    return-object p0
.end method

.method public static onNavigationEvent(ILjava/lang/String;Ljava/lang/String;)Lo/WinRaffleTicketResponseJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/WinRaffleTicketResponseJsonAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lo/WinVoucherSection;

    invoke-direct {v0, p0, p1, p2}, Lo/WinVoucherSection;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static onPostMessage(ILjava/lang/String;F)Lo/WinRaffleTicketResponseJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "F)",
            "Lo/WinRaffleTicketResponseJsonAdapter<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lo/WinTypeTemplateProperties;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lo/WinTypeTemplateProperties;-><init>(ILjava/lang/String;Ljava/lang/Float;)V

    return-object v0
.end method

.method public static onPostMessage(ILjava/lang/String;I)Lo/WinRaffleTicketResponseJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Lo/WinRaffleTicketResponseJsonAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lo/WinTicketResponse;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lo/WinTicketResponse;-><init>(ILjava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static onPostMessage(ILjava/lang/String;J)Lo/WinRaffleTicketResponseJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J)",
            "Lo/WinRaffleTicketResponseJsonAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lo/WinTypeTemplatePropertiesJsonAdapter;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lo/WinTypeTemplatePropertiesJsonAdapter;-><init>(ILjava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static onPostMessage(ILjava/lang/String;Ljava/lang/Boolean;)Lo/WinRaffleTicketResponseJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lo/WinRaffleTicketResponseJsonAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lo/WinResponse;

    invoke-direct {v0, p0, p1, p2}, Lo/WinResponse;-><init>(ILjava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/WinRaffleTicketResponseJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final onMessageChannelReady()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lo/WinRaffleTicketResponseJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract onMessageChannelReady(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final onPostMessage()I
    .locals 1

    iget v0, p0, Lo/WinRaffleTicketResponseJsonAdapter;->extraCallback:I

    return v0
.end method

.method protected abstract onPostMessage(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract onPostMessage(Lorg/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation
.end method
