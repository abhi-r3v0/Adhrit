.class public final Lo/aP;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final onPostMessage:Lo/aP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/aP<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final onMessageChannelReady:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lo/aP;

    invoke-direct {v0}, Lo/aP;-><init>()V

    sput-object v0, Lo/aP;->onPostMessage:Lo/aP;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lo/aP;->onMessageChannelReady:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 7
    iput-object p1, p0, Lo/aP;->onMessageChannelReady:Ljava/lang/Object;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value for optional is empty."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static ICustomTabsCallback(Ljava/lang/Object;)Lo/aP;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lo/aP<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 13
    sget-object p0, Lo/aP;->onPostMessage:Lo/aP;

    return-object p0

    .line 14
    :cond_0
    invoke-static {p0}, Lo/aP;->onPostMessage(Ljava/lang/Object;)Lo/aP;

    move-result-object p0

    return-object p0
.end method

.method public static onMessageChannelReady()Lo/aP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/aP<",
            "TT;>;"
        }
    .end annotation

    .line 9
    sget-object v0, Lo/aP;->onPostMessage:Lo/aP;

    return-object v0
.end method

.method public static onPostMessage(Ljava/lang/Object;)Lo/aP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lo/aP<",
            "TT;>;"
        }
    .end annotation

    .line 11
    new-instance v0, Lo/aP;

    invoke-direct {v0, p0}, Lo/aP;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    .line 18
    iget-object v0, p0, Lo/aP;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lo/aP;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
