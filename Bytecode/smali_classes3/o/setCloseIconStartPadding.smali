.class final synthetic Lo/setCloseIconStartPadding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Exception;

.field private final extraCallback:[B

.field private final onMessageChannelReady:Ljava/util/Map;

.field private final onNavigationEvent:Lo/setTextEndPaddingResource;

.field private final onPostMessage:I


# direct methods
.method constructor <init>(Lo/setTextEndPaddingResource;ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setCloseIconStartPadding;->onNavigationEvent:Lo/setTextEndPaddingResource;

    iput p2, p0, Lo/setCloseIconStartPadding;->onPostMessage:I

    iput-object p3, p0, Lo/setCloseIconStartPadding;->ICustomTabsCallback:Ljava/lang/Exception;

    iput-object p4, p0, Lo/setCloseIconStartPadding;->extraCallback:[B

    iput-object p5, p0, Lo/setCloseIconStartPadding;->onMessageChannelReady:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lo/setCloseIconStartPadding;->onNavigationEvent:Lo/setTextEndPaddingResource;

    iget v1, p0, Lo/setCloseIconStartPadding;->onPostMessage:I

    iget-object v2, p0, Lo/setCloseIconStartPadding;->ICustomTabsCallback:Ljava/lang/Exception;

    iget-object v3, p0, Lo/setCloseIconStartPadding;->extraCallback:[B

    iget-object v4, p0, Lo/setCloseIconStartPadding;->onMessageChannelReady:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/setTextEndPaddingResource;->onNavigationEvent(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void
.end method
