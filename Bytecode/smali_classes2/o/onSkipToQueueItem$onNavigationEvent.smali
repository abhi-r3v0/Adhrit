.class final Lo/onSkipToQueueItem$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onSkipToQueueItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# instance fields
.field ICustomTabsCallback:I

.field onNavigationEvent:Ljava/lang/String;

.field onPostMessage:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lo/onSkipToQueueItem$onNavigationEvent;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iget v0, p1, Lo/onSkipToQueueItem$onNavigationEvent;->ICustomTabsCallback:I

    iput v0, p0, Lo/onSkipToQueueItem$onNavigationEvent;->ICustomTabsCallback:I

    .line 96
    iget v0, p1, Lo/onSkipToQueueItem$onNavigationEvent;->onPostMessage:I

    iput v0, p0, Lo/onSkipToQueueItem$onNavigationEvent;->onPostMessage:I

    .line 97
    iget-object p1, p1, Lo/onSkipToQueueItem$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    iput-object p1, p0, Lo/onSkipToQueueItem$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 102
    instance-of v0, p1, Lo/onSkipToQueueItem$onNavigationEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 105
    :cond_0
    check-cast p1, Lo/onSkipToQueueItem$onNavigationEvent;

    .line 106
    iget v0, p0, Lo/onSkipToQueueItem$onNavigationEvent;->ICustomTabsCallback:I

    iget v2, p1, Lo/onSkipToQueueItem$onNavigationEvent;->ICustomTabsCallback:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lo/onSkipToQueueItem$onNavigationEvent;->onPostMessage:I

    iget v2, p1, Lo/onSkipToQueueItem$onNavigationEvent;->onPostMessage:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lo/onSkipToQueueItem$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    iget-object p1, p1, Lo/onSkipToQueueItem$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    .line 108
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 114
    iget v0, p0, Lo/onSkipToQueueItem$onNavigationEvent;->ICustomTabsCallback:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget v1, p0, Lo/onSkipToQueueItem$onNavigationEvent;->onPostMessage:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 116
    iget-object v1, p0, Lo/onSkipToQueueItem$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
