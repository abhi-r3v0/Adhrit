.class public final Lo/getMinWidthMajor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ButtonBarLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getMinWidthMajor$extraCallback;,
        Lo/getMinWidthMajor$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/AppCompatToggleButton<",
            "*>;>;"
        }
    .end annotation
.end field

.field private asInterface:I

.field private final extraCallback:Lo/getMinWidthMajor$onMessageChannelReady;

.field private final onMessageChannelReady:Lo/setStacked;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setStacked<",
            "Lo/getMinWidthMajor$extraCallback;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:I

.field private final onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lo/setStacked;

    invoke-direct {v0}, Lo/setStacked;-><init>()V

    iput-object v0, p0, Lo/getMinWidthMajor;->onMessageChannelReady:Lo/setStacked;

    .line 30
    new-instance v0, Lo/getMinWidthMajor$onMessageChannelReady;

    invoke-direct {v0}, Lo/getMinWidthMajor$onMessageChannelReady;-><init>()V

    iput-object v0, p0, Lo/getMinWidthMajor;->extraCallback:Lo/getMinWidthMajor$onMessageChannelReady;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getMinWidthMajor;->onPostMessage:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getMinWidthMajor;->ICustomTabsCallback:Ljava/util/Map;

    const/high16 v0, 0x400000

    .line 38
    iput v0, p0, Lo/getMinWidthMajor;->onNavigationEvent:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lo/setStacked;

    invoke-direct {v0}, Lo/setStacked;-><init>()V

    iput-object v0, p0, Lo/getMinWidthMajor;->onMessageChannelReady:Lo/setStacked;

    .line 30
    new-instance v0, Lo/getMinWidthMajor$onMessageChannelReady;

    invoke-direct {v0}, Lo/getMinWidthMajor$onMessageChannelReady;-><init>()V

    iput-object v0, p0, Lo/getMinWidthMajor;->extraCallback:Lo/getMinWidthMajor$onMessageChannelReady;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getMinWidthMajor;->onPostMessage:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getMinWidthMajor;->ICustomTabsCallback:Ljava/util/Map;

    .line 47
    iput p1, p0, Lo/getMinWidthMajor;->onNavigationEvent:I

    return-void
.end method

.method private extraCallback(Ljava/lang/Class;)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lo/getMinWidthMajor;->onPostMessage:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 182
    iget-object v1, p0, Lo/getMinWidthMajor;->onPostMessage:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private extraCallback(I)V
    .locals 5

    .line 152
    :cond_0
    :goto_0
    iget v0, p0, Lo/getMinWidthMajor;->asInterface:I

    if-le v0, p1, :cond_2

    .line 153
    iget-object v0, p0, Lo/getMinWidthMajor;->onMessageChannelReady:Lo/setStacked;

    invoke-virtual {v0}, Lo/setStacked;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10189
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/getMinWidthMajor;->onPostMessage(Ljava/lang/Class;)Lo/AppCompatToggleButton;

    move-result-object v1

    .line 156
    iget v2, p0, Lo/getMinWidthMajor;->asInterface:I

    invoke-interface {v1, v0}, Lo/AppCompatToggleButton;->ICustomTabsCallback(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1}, Lo/AppCompatToggleButton;->onMessageChannelReady()I

    move-result v4

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lo/getMinWidthMajor;->asInterface:I

    .line 157
    invoke-interface {v1, v0}, Lo/AppCompatToggleButton;->ICustomTabsCallback(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lo/getMinWidthMajor;->onMessageChannelReady(ILjava/lang/Class;)V

    .line 158
    invoke-interface {v1}, Lo/AppCompatToggleButton;->extraCallback()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    invoke-interface {v1}, Lo/AppCompatToggleButton;->extraCallback()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "evicted: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lo/AppCompatToggleButton;->ICustomTabsCallback(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10029
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Argument must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method private onMessageChannelReady(Lo/getMinWidthMajor$extraCallback;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/getMinWidthMajor$extraCallback;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p2}, Lo/getMinWidthMajor;->onPostMessage(Ljava/lang/Class;)Lo/AppCompatToggleButton;

    move-result-object v0

    .line 9116
    iget-object v1, p0, Lo/getMinWidthMajor;->onMessageChannelReady:Lo/setStacked;

    invoke-virtual {v1, p1}, Lo/setStacked;->ICustomTabsCallback(Lo/getMinWidthMinor;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    iget v2, p0, Lo/getMinWidthMajor;->asInterface:I

    invoke-interface {v0, v1}, Lo/AppCompatToggleButton;->ICustomTabsCallback(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v0}, Lo/AppCompatToggleButton;->onMessageChannelReady()I

    move-result v4

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lo/getMinWidthMajor;->asInterface:I

    .line 100
    invoke-interface {v0, v1}, Lo/AppCompatToggleButton;->ICustomTabsCallback(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {p0, v2, p2}, Lo/getMinWidthMajor;->onMessageChannelReady(ILjava/lang/Class;)V

    :cond_0
    if-nez v1, :cond_2

    .line 104
    invoke-interface {v0}, Lo/AppCompatToggleButton;->extraCallback()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 105
    invoke-interface {v0}, Lo/AppCompatToggleButton;->extraCallback()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Allocated "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lo/getMinWidthMajor$extraCallback;->ICustomTabsCallback:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_1
    iget p1, p1, Lo/getMinWidthMajor$extraCallback;->ICustomTabsCallback:I

    invoke-interface {v0, p1}, Lo/AppCompatToggleButton;->extraCallback(I)Ljava/lang/Object;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method private onMessageChannelReady(ILjava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 165
    invoke-direct {p0, p2}, Lo/getMinWidthMajor;->extraCallback(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object p2

    .line 166
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 172
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 174
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 168
    :cond_1
    new-instance p2, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tried to decrement empty size, size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", this: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private onPostMessage(Ljava/lang/Class;)Lo/AppCompatToggleButton;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo/AppCompatToggleButton<",
            "TT;>;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lo/getMinWidthMajor;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AppCompatToggleButton;

    if-nez v0, :cond_2

    .line 196
    const-class v0, [I

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Lo/getFixedWidthMajor;

    invoke-direct {v0}, Lo/getFixedWidthMajor;-><init>()V

    goto :goto_0

    .line 198
    :cond_0
    const-class v0, [B

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    new-instance v0, Lo/setAttachListener;

    invoke-direct {v0}, Lo/setAttachListener;-><init>()V

    .line 204
    :goto_0
    iget-object v1, p0, Lo/getMinWidthMajor;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 201
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No array pool found for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lo/getMinWidthMajor;->extraCallback:Lo/getMinWidthMajor$onMessageChannelReady;

    .line 4011
    iget-object v1, v0, Lo/ContentFrameLayout;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMinWidthMinor;

    if-nez v1, :cond_0

    .line 4013
    invoke-virtual {v0}, Lo/ContentFrameLayout;->onMessageChannelReady()Lo/getMinWidthMinor;

    move-result-object v1

    .line 3227
    :cond_0
    check-cast v1, Lo/getMinWidthMajor$extraCallback;

    const/16 v0, 0x8

    .line 4248
    iput v0, v1, Lo/getMinWidthMajor$extraCallback;->ICustomTabsCallback:I

    .line 4249
    iput-object p1, v1, Lo/getMinWidthMajor$extraCallback;->onNavigationEvent:Ljava/lang/Class;

    .line 80
    invoke-direct {p0, v1, p1}, Lo/getMinWidthMajor;->onMessageChannelReady(Lo/getMinWidthMajor$extraCallback;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 59
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 61
    invoke-direct {p0, v0}, Lo/getMinWidthMajor;->onPostMessage(Ljava/lang/Class;)Lo/AppCompatToggleButton;

    move-result-object v1

    .line 62
    invoke-interface {v1, p1}, Lo/AppCompatToggleButton;->ICustomTabsCallback(Ljava/lang/Object;)I

    move-result v2

    .line 63
    invoke-interface {v1}, Lo/AppCompatToggleButton;->onMessageChannelReady()I

    move-result v1

    mul-int v1, v1, v2

    .line 1120
    iget v3, p0, Lo/getMinWidthMajor;->onNavigationEvent:I

    div-int/lit8 v3, v3, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    if-gt v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    .line 65
    monitor-exit p0

    return-void

    .line 67
    :cond_1
    :try_start_1
    iget-object v3, p0, Lo/getMinWidthMajor;->extraCallback:Lo/getMinWidthMajor$onMessageChannelReady;

    .line 2011
    iget-object v5, v3, Lo/ContentFrameLayout;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/getMinWidthMinor;

    if-nez v5, :cond_2

    .line 2013
    invoke-virtual {v3}, Lo/ContentFrameLayout;->onMessageChannelReady()Lo/getMinWidthMinor;

    move-result-object v5

    .line 1227
    :cond_2
    check-cast v5, Lo/getMinWidthMajor$extraCallback;

    .line 2248
    iput v2, v5, Lo/getMinWidthMajor$extraCallback;->ICustomTabsCallback:I

    .line 2249
    iput-object v0, v5, Lo/getMinWidthMajor$extraCallback;->onNavigationEvent:Ljava/lang/Class;

    .line 69
    iget-object v2, p0, Lo/getMinWidthMajor;->onMessageChannelReady:Lo/setStacked;

    invoke-virtual {v2, v5, p1}, Lo/setStacked;->onNavigationEvent(Lo/getMinWidthMinor;Ljava/lang/Object;)V

    .line 70
    invoke-direct {p0, v0}, Lo/getMinWidthMajor;->extraCallback(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object p1

    .line 71
    iget v0, v5, Lo/getMinWidthMajor$extraCallback;->ICustomTabsCallback:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 72
    iget v2, v5, Lo/getMinWidthMajor$extraCallback;->ICustomTabsCallback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/2addr v4, v0

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget p1, p0, Lo/getMinWidthMajor;->asInterface:I

    add-int/2addr p1, v1

    iput p1, p0, Lo/getMinWidthMajor;->asInterface:I

    .line 3148
    iget p1, p0, Lo/getMinWidthMajor;->onNavigationEvent:I

    invoke-direct {p0, p1}, Lo/getMinWidthMajor;->extraCallback(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onMessageChannelReady(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lo/getMinWidthMajor;->onPostMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    .line 143
    :cond_1
    :try_start_1
    iget p1, p0, Lo/getMinWidthMajor;->onNavigationEvent:I

    div-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1}, Lo/getMinWidthMajor;->extraCallback(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :cond_2
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onNavigationEvent(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 85
    :try_start_0
    invoke-direct {p0, p2}, Lo/getMinWidthMajor;->extraCallback(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 5129
    iget v3, p0, Lo/getMinWidthMajor;->asInterface:I

    if-eqz v3, :cond_1

    iget v3, p0, Lo/getMinWidthMajor;->onNavigationEvent:I

    iget v4, p0, Lo/getMinWidthMajor;->asInterface:I

    div-int/2addr v3, v4

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_3

    .line 5125
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    shl-int/lit8 v4, p1, 0x3

    if-gt v3, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    .line 88
    iget-object p1, p0, Lo/getMinWidthMajor;->extraCallback:Lo/getMinWidthMajor$onMessageChannelReady;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 6011
    iget-object v1, p1, Lo/ContentFrameLayout;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMinWidthMinor;

    if-nez v1, :cond_4

    .line 6013
    invoke-virtual {p1}, Lo/ContentFrameLayout;->onMessageChannelReady()Lo/getMinWidthMinor;

    move-result-object v1

    .line 5227
    :cond_4
    check-cast v1, Lo/getMinWidthMajor$extraCallback;

    .line 6248
    iput v0, v1, Lo/getMinWidthMajor$extraCallback;->ICustomTabsCallback:I

    .line 6249
    iput-object p2, v1, Lo/getMinWidthMajor$extraCallback;->onNavigationEvent:Ljava/lang/Class;

    goto :goto_3

    .line 90
    :cond_5
    iget-object v0, p0, Lo/getMinWidthMajor;->extraCallback:Lo/getMinWidthMajor$onMessageChannelReady;

    .line 8011
    iget-object v1, v0, Lo/ContentFrameLayout;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMinWidthMinor;

    if-nez v1, :cond_6

    .line 8013
    invoke-virtual {v0}, Lo/ContentFrameLayout;->onMessageChannelReady()Lo/getMinWidthMinor;

    move-result-object v1

    .line 7227
    :cond_6
    check-cast v1, Lo/getMinWidthMajor$extraCallback;

    .line 8248
    iput p1, v1, Lo/getMinWidthMajor$extraCallback;->ICustomTabsCallback:I

    .line 8249
    iput-object p2, v1, Lo/getMinWidthMajor$extraCallback;->onNavigationEvent:Ljava/lang/Class;

    .line 92
    :goto_3
    invoke-direct {p0, v1, p2}, Lo/getMinWidthMajor;->onMessageChannelReady(Lo/getMinWidthMajor$extraCallback;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPostMessage()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 134
    :try_start_0
    invoke-direct {p0, v0}, Lo/getMinWidthMajor;->extraCallback(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
