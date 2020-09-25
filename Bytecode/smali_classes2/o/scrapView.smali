.class public final Lo/scrapView;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Lcom/dreamplug/network/internals/LiveCallbackWrapper;

.field private final onNavigationEvent:Ljava/lang/Object;

.field private final onPostMessage:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/dreamplug/network/internals/LiveCallbackWrapper;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/scrapView;->extraCallback:Lcom/dreamplug/network/internals/LiveCallbackWrapper;

    iput-object p2, p0, Lo/scrapView;->onPostMessage:Ljava/lang/Throwable;

    iput-object p3, p0, Lo/scrapView;->onNavigationEvent:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/scrapView;->extraCallback:Lcom/dreamplug/network/internals/LiveCallbackWrapper;

    iget-object v1, p0, Lo/scrapView;->onPostMessage:Ljava/lang/Throwable;

    iget-object v2, p0, Lo/scrapView;->onNavigationEvent:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/dreamplug/network/internals/LiveCallbackWrapper;->ICustomTabsCallback(Lcom/dreamplug/network/internals/LiveCallbackWrapper;Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
