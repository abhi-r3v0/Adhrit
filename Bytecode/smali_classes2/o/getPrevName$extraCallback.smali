.class public final Lo/getPrevName$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPrevName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "extraCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:[Lo/toLog;

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final synthetic onNavigationEvent:Lo/getPrevName;

.field public final onPostMessage:J


# direct methods
.method constructor <init>(Lo/getPrevName;Ljava/lang/String;J[Lo/toLog;)V
    .locals 0

    .line 795
    iput-object p1, p0, Lo/getPrevName$extraCallback;->onNavigationEvent:Lo/getPrevName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 796
    iput-object p2, p0, Lo/getPrevName$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 797
    iput-wide p3, p0, Lo/getPrevName$extraCallback;->onPostMessage:J

    .line 798
    iput-object p5, p0, Lo/getPrevName$extraCallback;->ICustomTabsCallback:[Lo/toLog;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .line 825
    iget-object v0, p0, Lo/getPrevName$extraCallback;->ICustomTabsCallback:[Lo/toLog;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 826
    invoke-static {v3}, Lo/generateEventsForType;->onNavigationEvent(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
