.class public final Lo/setInternalImageTint;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setInternalImageTint$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final extraCallback:Lo/setInternalImageTint$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setInternalImageTint$onMessageChannelReady<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Lo/setInternalImageTint$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setInternalImageTint$onMessageChannelReady<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile onPostMessage:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lo/setInternalImageTint$3;

    invoke-direct {v0}, Lo/setInternalImageTint$3;-><init>()V

    sput-object v0, Lo/setInternalImageTint;->extraCallback:Lo/setInternalImageTint$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lo/setInternalImageTint$onMessageChannelReady;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lo/setInternalImageTint$onMessageChannelReady<",
            "TT;>;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3036
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    iput-object p1, p0, Lo/setInternalImageTint;->ICustomTabsCallback:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lo/setInternalImageTint;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 93
    check-cast p3, Lo/setInternalImageTint$onMessageChannelReady;

    iput-object p3, p0, Lo/setInternalImageTint;->onNavigationEvent:Lo/setInternalImageTint$onMessageChannelReady;

    return-void

    .line 4029
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Argument must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3037
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)Lo/setInternalImageTint;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lo/setInternalImageTint<",
            "TT;>;"
        }
    .end annotation

    .line 47
    new-instance v0, Lo/setInternalImageTint;

    .line 1138
    sget-object v1, Lo/setInternalImageTint;->extraCallback:Lo/setInternalImageTint$onMessageChannelReady;

    const/4 v2, 0x0

    .line 47
    invoke-direct {v0, p0, v2, v1}, Lo/setInternalImageTint;-><init>(Ljava/lang/String;Ljava/lang/Object;Lo/setInternalImageTint$onMessageChannelReady;)V

    return-object v0
.end method

.method public static onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;Lo/setInternalImageTint$onMessageChannelReady;)Lo/setInternalImageTint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lo/setInternalImageTint$onMessageChannelReady<",
            "TT;>;)",
            "Lo/setInternalImageTint<",
            "TT;>;"
        }
    .end annotation

    .line 86
    new-instance v0, Lo/setInternalImageTint;

    invoke-direct {v0, p0, p1, p2}, Lo/setInternalImageTint;-><init>(Ljava/lang/String;Ljava/lang/Object;Lo/setInternalImageTint$onMessageChannelReady;)V

    return-object v0
.end method

.method public static onPostMessage(Ljava/lang/String;Ljava/lang/Object;)Lo/setInternalImageTint;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lo/setInternalImageTint<",
            "TT;>;"
        }
    .end annotation

    .line 59
    new-instance v0, Lo/setInternalImageTint;

    .line 2138
    sget-object v1, Lo/setInternalImageTint;->extraCallback:Lo/setInternalImageTint$onMessageChannelReady;

    .line 59
    invoke-direct {v0, p0, p1, v1}, Lo/setInternalImageTint;-><init>(Ljava/lang/String;Ljava/lang/Object;Lo/setInternalImageTint$onMessageChannelReady;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 123
    instance-of v0, p1, Lo/setInternalImageTint;

    if-eqz v0, :cond_0

    .line 124
    check-cast p1, Lo/setInternalImageTint;

    .line 125
    iget-object v0, p0, Lo/setInternalImageTint;->ICustomTabsCallback:Ljava/lang/String;

    iget-object p1, p1, Lo/setInternalImageTint;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 132
    iget-object v0, p0, Lo/setInternalImageTint;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Option{key=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/setInternalImageTint;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
