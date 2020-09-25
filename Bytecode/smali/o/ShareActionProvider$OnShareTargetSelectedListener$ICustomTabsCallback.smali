.class final Lo/ShareActionProvider$OnShareTargetSelectedListener$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onServiceConnected;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ShareActionProvider$OnShareTargetSelectedListener;->extraCallback(Ljava/lang/String;)Lo/setActive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/onServiceConnected<",
        "TX;TY;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u00012X\u0010\u0002\u001aT\u0012\u0004\u0012\u00020\u0004\u0012\u0008\u0012\u00060\u0005R\u00020\u0006 \u0008**\u0012\u0004\u0012\u00020\u0004\u0012\u0008\u0012\u00060\u0005R\u00020\u0006\u0018\u00010\u0003j\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0008\u0012\u00060\u0005R\u00020\u0006\u0018\u0001`\u00070\u0003j\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0008\u0012\u00060\u0005R\u00020\u0006`\u0007H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "Ljava/util/HashMap;",
        "",
        "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;",
        "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse;",
        "Lkotlin/collections/HashMap;",
        "kotlin.jvm.PlatformType",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/ShareActionProvider$OnShareTargetSelectedListener$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 15
    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    .line 1077
    iget-object v0, p0, Lo/ShareActionProvider$OnShareTargetSelectedListener$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 1079
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
