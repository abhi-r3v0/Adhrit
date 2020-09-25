.class public final Lo/shouldLog;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public ICustomTabsCallback:I

.field public ICustomTabsCallback$Stub:Lo/shouldLog;

.field public final extraCallback:[B

.field onMessageChannelReady:Z

.field public onNavigationEvent:I

.field onPostMessage:Z

.field onTransact:Lo/shouldLog;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 63
    iput-object v0, p0, Lo/shouldLog;->extraCallback:[B

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lo/shouldLog;->onMessageChannelReady:Z

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lo/shouldLog;->onPostMessage:Z

    return-void
.end method

.method constructor <init>([BII)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lo/shouldLog;->extraCallback:[B

    .line 70
    iput p2, p0, Lo/shouldLog;->ICustomTabsCallback:I

    .line 71
    iput p3, p0, Lo/shouldLog;->onNavigationEvent:I

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lo/shouldLog;->onPostMessage:Z

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lo/shouldLog;->onMessageChannelReady:Z

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/shouldLog;I)V
    .locals 4

    .line 163
    iget-boolean v0, p1, Lo/shouldLog;->onMessageChannelReady:Z

    if-eqz v0, :cond_3

    .line 164
    iget v0, p1, Lo/shouldLog;->onNavigationEvent:I

    add-int v1, v0, p2

    const/16 v2, 0x2000

    if-le v1, v2, :cond_2

    .line 166
    iget-boolean v1, p1, Lo/shouldLog;->onPostMessage:Z

    if-nez v1, :cond_1

    add-int v1, v0, p2

    .line 167
    iget v3, p1, Lo/shouldLog;->ICustomTabsCallback:I

    sub-int/2addr v1, v3

    if-gt v1, v2, :cond_0

    .line 168
    iget-object v1, p1, Lo/shouldLog;->extraCallback:[B

    sub-int/2addr v0, v3

    const/4 v2, 0x0

    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget v0, p1, Lo/shouldLog;->onNavigationEvent:I

    iget v1, p1, Lo/shouldLog;->ICustomTabsCallback:I

    sub-int/2addr v0, v1

    iput v0, p1, Lo/shouldLog;->onNavigationEvent:I

    .line 170
    iput v2, p1, Lo/shouldLog;->ICustomTabsCallback:I

    goto :goto_0

    .line 167
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 166
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 173
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/shouldLog;->extraCallback:[B

    iget v1, p0, Lo/shouldLog;->ICustomTabsCallback:I

    iget-object v2, p1, Lo/shouldLog;->extraCallback:[B

    iget v3, p1, Lo/shouldLog;->onNavigationEvent:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iget v0, p1, Lo/shouldLog;->onNavigationEvent:I

    add-int/2addr v0, p2

    iput v0, p1, Lo/shouldLog;->onNavigationEvent:I

    .line 175
    iget p1, p0, Lo/shouldLog;->ICustomTabsCallback:I

    add-int/2addr p1, p2

    iput p1, p0, Lo/shouldLog;->ICustomTabsCallback:I

    return-void

    .line 163
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final onPostMessage()Lo/shouldLog;
    .locals 4

    .line 96
    iget-object v0, p0, Lo/shouldLog;->ICustomTabsCallback$Stub:Lo/shouldLog;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 97
    :goto_0
    iget-object v2, p0, Lo/shouldLog;->onTransact:Lo/shouldLog;

    iget-object v3, p0, Lo/shouldLog;->ICustomTabsCallback$Stub:Lo/shouldLog;

    iput-object v3, v2, Lo/shouldLog;->ICustomTabsCallback$Stub:Lo/shouldLog;

    .line 98
    iget-object v3, p0, Lo/shouldLog;->ICustomTabsCallback$Stub:Lo/shouldLog;

    iput-object v2, v3, Lo/shouldLog;->onTransact:Lo/shouldLog;

    .line 99
    iput-object v1, p0, Lo/shouldLog;->ICustomTabsCallback$Stub:Lo/shouldLog;

    .line 100
    iput-object v1, p0, Lo/shouldLog;->onTransact:Lo/shouldLog;

    return-object v0
.end method
