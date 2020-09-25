.class public final Lo/setTitleMarginTop$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setTitleMarginTop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/gating/GatingActivity$Companion;",
        "",
        "()V",
        "CARDS_LAYOUT_TYPE_CAROUSAL",
        "",
        "CARDS_LAYOUT_TYPE_LIST",
        "TAG",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final extraCallback:I

.field private final onNavigationEvent:Lo/getTranslateY;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/getTranslateY;)V
    .locals 1

    .line 1032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4000

    .line 1034
    iput v0, p0, Lo/setTitleMarginTop$ICustomTabsCallback;->extraCallback:I

    .line 1035
    iput-object p1, p0, Lo/setTitleMarginTop$ICustomTabsCallback;->onNavigationEvent:Lo/getTranslateY;

    return-void
.end method

.method public constructor <init>(Lo/getTranslateY;B)V
    .locals 0

    .line 1028
    invoke-direct {p0, p1}, Lo/setTitleMarginTop$ICustomTabsCallback;-><init>(Lo/getTranslateY;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2048
    iget-object v0, p0, Lo/setTitleMarginTop$ICustomTabsCallback;->onNavigationEvent:Lo/getTranslateY;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Lo/getTranslateY;->extraCallback(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-wide/16 v2, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 2052
    :try_start_0
    invoke-virtual {p1, v0, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 2060
    iget-object p1, p0, Lo/setTitleMarginTop$ICustomTabsCallback;->onNavigationEvent:Lo/getTranslateY;

    invoke-interface {p1, v0}, Lo/getTranslateY;->extraCallback(Ljava/lang/Object;)V

    return-wide v2

    .line 2056
    :cond_0
    :try_start_1
    invoke-virtual {p2, v0, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v4, v5

    add-long/2addr v2, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2060
    iget-object p2, p0, Lo/setTitleMarginTop$ICustomTabsCallback;->onNavigationEvent:Lo/getTranslateY;

    invoke-interface {p2, v0}, Lo/getTranslateY;->extraCallback(Ljava/lang/Object;)V

    throw p1
.end method
