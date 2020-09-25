.class final Lo/setBackgroundColor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:[B

.field private final extraCallback:Lo/setFabCradleMargin;

.field private final onMessageChannelReady:Ljava/lang/Throwable;

.field private final onNavigationEvent:I

.field private final onPostMessage:Ljava/lang/String;

.field private final onRelationshipValidationResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lo/setFabCradleMargin;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/setFabCradleMargin;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lo/setBackgroundColor;->extraCallback:Lo/setFabCradleMargin;

    .line 4
    iput p3, p0, Lo/setBackgroundColor;->onNavigationEvent:I

    .line 5
    iput-object p4, p0, Lo/setBackgroundColor;->onMessageChannelReady:Ljava/lang/Throwable;

    .line 6
    iput-object p5, p0, Lo/setBackgroundColor;->ICustomTabsCallback:[B

    .line 7
    iput-object p1, p0, Lo/setBackgroundColor;->onPostMessage:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lo/setBackgroundColor;->onRelationshipValidationResult:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lo/setFabCradleMargin;ILjava/lang/Throwable;[BLjava/util/Map;Lo/setCradleVerticalOffset;)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p6}, Lo/setBackgroundColor;-><init>(Ljava/lang/String;Lo/setFabCradleMargin;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 10
    iget-object v0, p0, Lo/setBackgroundColor;->extraCallback:Lo/setFabCradleMargin;

    iget-object v1, p0, Lo/setBackgroundColor;->onPostMessage:Ljava/lang/String;

    iget v2, p0, Lo/setBackgroundColor;->onNavigationEvent:I

    iget-object v3, p0, Lo/setBackgroundColor;->onMessageChannelReady:Ljava/lang/Throwable;

    iget-object v4, p0, Lo/setBackgroundColor;->ICustomTabsCallback:[B

    iget-object v5, p0, Lo/setBackgroundColor;->onRelationshipValidationResult:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Lo/setFabCradleMargin;->extraCallback(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
