.class public final enum Lo/isPostponed;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/isPostponed;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/credprotect/model/AuthProviderType;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "toString",
        "OUTLOOK",
        "GOOGLE",
        "YAHOO",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final enum extraCallback:Lo/isPostponed;

.field private static final synthetic onMessageChannelReady:[Lo/isPostponed;

.field public static final enum onNavigationEvent:Lo/isPostponed;

.field public static final enum onPostMessage:Lo/isPostponed;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lo/isPostponed;

    new-instance v1, Lo/isPostponed;

    const/4 v2, 0x0

    const-string v3, "OUTLOOK"

    const-string v4, "outlook"

    .line 5
    invoke-direct {v1, v3, v2, v4}, Lo/isPostponed;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo/isPostponed;->onNavigationEvent:Lo/isPostponed;

    aput-object v1, v0, v2

    new-instance v1, Lo/isPostponed;

    const/4 v2, 0x1

    const-string v3, "GOOGLE"

    const-string v4, "google"

    invoke-direct {v1, v3, v2, v4}, Lo/isPostponed;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo/isPostponed;->onPostMessage:Lo/isPostponed;

    aput-object v1, v0, v2

    new-instance v1, Lo/isPostponed;

    const/4 v2, 0x2

    const-string v3, "YAHOO"

    const-string/jumbo v4, "yahoo"

    invoke-direct {v1, v3, v2, v4}, Lo/isPostponed;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo/isPostponed;->extraCallback:Lo/isPostponed;

    aput-object v1, v0, v2

    sput-object v0, Lo/isPostponed;->onMessageChannelReady:[Lo/isPostponed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lo/isPostponed;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/isPostponed;
    .locals 1

    const-class v0, Lo/isPostponed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/isPostponed;

    return-object p0
.end method

.method public static values()[Lo/isPostponed;
    .locals 1

    sget-object v0, Lo/isPostponed;->onMessageChannelReady:[Lo/isPostponed;

    invoke-virtual {v0}, [Lo/isPostponed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/isPostponed;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 8
    iget-object v0, p0, Lo/isPostponed;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
