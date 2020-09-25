.class public final Lo/updateChildrenInternal$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/updateChildrenInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public final ICustomTabsCallback:J

.field public final synthetic extraCallback:Lo/updateChildrenInternal;

.field public final onMessageChannelReady:[Lo/toLog;

.field public final onNavigationEvent:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lo/updateChildrenInternal;Ljava/lang/String;J[Lo/toLog;)V
    .locals 0

    .line 772
    iput-object p1, p0, Lo/updateChildrenInternal$onNavigationEvent;->extraCallback:Lo/updateChildrenInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    iput-object p2, p0, Lo/updateChildrenInternal$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    .line 774
    iput-wide p3, p0, Lo/updateChildrenInternal$onNavigationEvent;->ICustomTabsCallback:J

    .line 775
    iput-object p5, p0, Lo/updateChildrenInternal$onNavigationEvent;->onMessageChannelReady:[Lo/toLog;

    return-void
.end method

.method synthetic constructor <init>(Lo/updateChildrenInternal;Ljava/lang/String;J[Lo/toLog;[J)V
    .locals 0

    .line 766
    invoke-direct/range {p0 .. p5}, Lo/updateChildrenInternal$onNavigationEvent;-><init>(Lo/updateChildrenInternal;Ljava/lang/String;J[Lo/toLog;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .line 803
    iget-object v0, p0, Lo/updateChildrenInternal$onNavigationEvent;->onMessageChannelReady:[Lo/toLog;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 804
    invoke-static {v3}, Lo/createForTests;->onMessageChannelReady(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
