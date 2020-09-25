.class public final Lo/removePromptView;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/cred/pay/repository/config/PayUserInfo;",
        "",
        "()V",
        "userId",
        "",
        "getUserId",
        "()Ljava/lang/String;",
        "setUserId",
        "(Ljava/lang/String;)V",
        "credpayrepository_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/removePromptView;

.field private static onNavigationEvent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lo/removePromptView;

    invoke-direct {v0}, Lo/removePromptView;-><init>()V

    sput-object v0, Lo/removePromptView;->onMessageChannelReady:Lo/removePromptView;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady(Ljava/lang/String;)V
    .locals 0

    .line 4
    sput-object p0, Lo/removePromptView;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method public static onPostMessage()Ljava/lang/String;
    .locals 1

    .line 4
    sget-object v0, Lo/removePromptView;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method
