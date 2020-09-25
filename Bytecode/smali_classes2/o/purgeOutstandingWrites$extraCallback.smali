.class final Lo/purgeOutstandingWrites$extraCallback;
.super Lo/getIndexedFilter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/purgeOutstandingWrites;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/purgeOutstandingWrites;


# direct methods
.method constructor <init>(Lo/purgeOutstandingWrites;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lo/purgeOutstandingWrites$extraCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    invoke-direct {p0}, Lo/getIndexedFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 605
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 607
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public final extraCallback()V
    .locals 3

    .line 601
    iget-object v0, p0, Lo/purgeOutstandingWrites$extraCallback;->onNavigationEvent:Lo/purgeOutstandingWrites;

    sget-object v1, Lo/getReferenceFromUrl;->asInterface:Lo/getReferenceFromUrl;

    .line 1230
    invoke-virtual {v0, v1}, Lo/purgeOutstandingWrites;->ICustomTabsCallback(Lo/getReferenceFromUrl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1233
    iget-object v2, v0, Lo/purgeOutstandingWrites;->onNavigationEvent:Lo/setPersistenceEnabled;

    iget v0, v0, Lo/purgeOutstandingWrites;->extraCallback:I

    invoke-virtual {v2, v0, v1}, Lo/setPersistenceEnabled;->onMessageChannelReady(ILo/getReferenceFromUrl;)V

    :cond_0
    return-void
.end method
