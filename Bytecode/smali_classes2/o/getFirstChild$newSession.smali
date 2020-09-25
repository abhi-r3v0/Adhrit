.class final Lo/getFirstChild$newSession;
.super Lo/getFirstChild;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getFirstChild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "newSession"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getFirstChild<",
        "Lo/serializedName$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field static final onNavigationEvent:Lo/getFirstChild$newSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 295
    new-instance v0, Lo/getFirstChild$newSession;

    invoke-direct {v0}, Lo/getFirstChild$newSession;-><init>()V

    sput-object v0, Lo/getFirstChild$newSession;->onNavigationEvent:Lo/getFirstChild$newSession;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 297
    invoke-direct {p0}, Lo/getFirstChild;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic onPostMessage(Lo/getMaxNode;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    check-cast p2, Lo/serializedName$ICustomTabsCallback;

    if-eqz p2, :cond_1

    .line 2182
    iget-object p1, p1, Lo/getMaxNode;->asBinder:Lo/serializedName$onMessageChannelReady;

    if-eqz p2, :cond_0

    .line 2334
    iget-object p1, p1, Lo/serializedName$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2333
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "part == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
