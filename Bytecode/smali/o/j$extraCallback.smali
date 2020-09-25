.class final Lo/j$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/InstrumentViewMapping;

.field private final ICustomTabsCallback$Stub:Z

.field private final ICustomTabsCallback$Stub$Proxy:Z

.field private final ICustomTabsService:Z

.field private final asBinder:I

.field private final asInterface:Z

.field private final extraCallback:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lo/c$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/GoogleReferrer;

.field private final onNavigationEvent:Z

.field private final onPostMessage:I

.field private final onRelationshipValidationResult:Z

.field private final onTransact:Z

.field private final warmup:Z


# direct methods
.method public constructor <init>(Lo/GoogleReferrer;Lo/GoogleReferrer;Ljava/util/concurrent/CopyOnWriteArrayList;Lo/InstrumentViewMapping;ZIIZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/GoogleReferrer;",
            "Lo/GoogleReferrer;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lo/c$ICustomTabsCallback;",
            ">;",
            "Lo/InstrumentViewMapping;",
            "ZIIZZZ)V"
        }
    .end annotation

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    iput-object p1, p0, Lo/j$extraCallback;->onMessageChannelReady:Lo/GoogleReferrer;

    .line 798
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lo/j$extraCallback;->extraCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 799
    iput-object p4, p0, Lo/j$extraCallback;->ICustomTabsCallback:Lo/InstrumentViewMapping;

    .line 800
    iput-boolean p5, p0, Lo/j$extraCallback;->onNavigationEvent:Z

    .line 801
    iput p6, p0, Lo/j$extraCallback;->onPostMessage:I

    .line 802
    iput p7, p0, Lo/j$extraCallback;->asBinder:I

    .line 803
    iput-boolean p8, p0, Lo/j$extraCallback;->onRelationshipValidationResult:Z

    .line 804
    iput-boolean p9, p0, Lo/j$extraCallback;->ICustomTabsService:Z

    .line 805
    iput-boolean p10, p0, Lo/j$extraCallback;->ICustomTabsCallback$Stub$Proxy:Z

    .line 806
    iget p3, p2, Lo/GoogleReferrer;->onTransact:I

    iget p4, p1, Lo/GoogleReferrer;->onTransact:I

    const/4 p5, 0x1

    const/4 p6, 0x0

    if-eq p3, p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lo/j$extraCallback;->onTransact:Z

    .line 807
    iget-object p3, p2, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    iget-object p4, p1, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    if-ne p3, p4, :cond_2

    iget-object p3, p2, Lo/GoogleReferrer;->extraCallback:Ljava/lang/Object;

    iget-object p4, p1, Lo/GoogleReferrer;->extraCallback:Ljava/lang/Object;

    if-eq p3, p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p3, 0x1

    :goto_2
    iput-boolean p3, p0, Lo/j$extraCallback;->asInterface:Z

    .line 810
    iget-boolean p3, p2, Lo/GoogleReferrer;->asBinder:Z

    iget-boolean p4, p1, Lo/GoogleReferrer;->asBinder:Z

    if-eq p3, p4, :cond_3

    const/4 p3, 0x1

    goto :goto_3

    :cond_3
    const/4 p3, 0x0

    :goto_3
    iput-boolean p3, p0, Lo/j$extraCallback;->ICustomTabsCallback$Stub:Z

    .line 811
    iget-object p2, p2, Lo/GoogleReferrer;->onRelationshipValidationResult:Lo/OfferJsonAdapter;

    iget-object p1, p1, Lo/GoogleReferrer;->onRelationshipValidationResult:Lo/OfferJsonAdapter;

    if-eq p2, p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 p5, 0x0

    :goto_4
    iput-boolean p5, p0, Lo/j$extraCallback;->warmup:Z

    return-void
.end method


# virtual methods
.method final synthetic ICustomTabsCallback(Lo/allow$onNavigationEvent;)V
    .locals 2

    .line 843
    iget-boolean v0, p0, Lo/j$extraCallback;->ICustomTabsService:Z

    iget-object v1, p0, Lo/j$extraCallback;->onMessageChannelReady:Lo/GoogleReferrer;

    iget v1, v1, Lo/GoogleReferrer;->onTransact:I

    invoke-interface {p1, v0, v1}, Lo/allow$onNavigationEvent;->onMessageChannelReady(ZI)V

    return-void
.end method

.method final synthetic extraCallback(Lo/allow$onNavigationEvent;)V
    .locals 1

    .line 827
    iget v0, p0, Lo/j$extraCallback;->onPostMessage:I

    invoke-interface {p1, v0}, Lo/allow$onNavigationEvent;->onPostMessage(I)V

    return-void
.end method

.method final synthetic onMessageChannelReady(Lo/allow$onNavigationEvent;)V
    .locals 1

    .line 838
    iget-object v0, p0, Lo/j$extraCallback;->onMessageChannelReady:Lo/GoogleReferrer;

    iget-boolean v0, v0, Lo/GoogleReferrer;->asBinder:Z

    invoke-interface {p1, v0}, Lo/allow$onNavigationEvent;->extraCallback(Z)V

    return-void
.end method

.method final synthetic onNavigationEvent(Lo/allow$onNavigationEvent;)V
    .locals 2

    .line 849
    iget-object v0, p0, Lo/j$extraCallback;->onMessageChannelReady:Lo/GoogleReferrer;

    iget v0, v0, Lo/GoogleReferrer;->onTransact:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lo/allow$onNavigationEvent;->ICustomTabsCallback(Z)V

    return-void
.end method

.method final synthetic onPostMessage(Lo/allow$onNavigationEvent;)V
    .locals 2

    .line 834
    iget-object v0, p0, Lo/j$extraCallback;->onMessageChannelReady:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->ICustomTabsCallback$Stub:Lo/JuspaySessionToken;

    iget-object v1, p0, Lo/j$extraCallback;->onMessageChannelReady:Lo/GoogleReferrer;

    iget-object v1, v1, Lo/GoogleReferrer;->onRelationshipValidationResult:Lo/OfferJsonAdapter;

    iget-object v1, v1, Lo/OfferJsonAdapter;->extraCallback:Lo/InstrumentDataJsonAdapter;

    invoke-interface {p1, v0, v1}, Lo/allow$onNavigationEvent;->onMessageChannelReady(Lo/JuspaySessionToken;Lo/InstrumentDataJsonAdapter;)V

    return-void
.end method

.method final synthetic onRelationshipValidationResult(Lo/allow$onNavigationEvent;)V
    .locals 3

    .line 821
    iget-object v0, p0, Lo/j$extraCallback;->onMessageChannelReady:Lo/GoogleReferrer;

    iget-object v0, v0, Lo/GoogleReferrer;->ICustomTabsCallback:Lo/t;

    iget-object v1, p0, Lo/j$extraCallback;->onMessageChannelReady:Lo/GoogleReferrer;

    iget-object v1, v1, Lo/GoogleReferrer;->extraCallback:Ljava/lang/Object;

    iget v2, p0, Lo/j$extraCallback;->asBinder:I

    invoke-interface {p1, v0, v1, v2}, Lo/allow$onNavigationEvent;->onPostMessage(Lo/t;Ljava/lang/Object;I)V

    return-void
.end method

.method public final run()V
    .locals 2

    .line 817
    iget-boolean v0, p0, Lo/j$extraCallback;->asInterface:Z

    if-nez v0, :cond_0

    iget v0, p0, Lo/j$extraCallback;->asBinder:I

    if-nez v0, :cond_1

    .line 818
    :cond_0
    iget-object v0, p0, Lo/j$extraCallback;->extraCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lo/InAppEvent;

    invoke-direct {v1, p0}, Lo/InAppEvent;-><init>(Lo/j$extraCallback;)V

    invoke-static {v0, v1}, Lo/j;->extraCallback(Ljava/util/concurrent/CopyOnWriteArrayList;Lo/c$onPostMessage;)V

    .line 824
    :cond_1
    iget-boolean v0, p0, Lo/j$extraCallback;->onNavigationEvent:Z

    if-eqz v0, :cond_2

    .line 825
    iget-object v0, p0, Lo/j$extraCallback;->extraCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lo/BackgroundReferrerLaunch;

    invoke-direct {v1, p0}, Lo/BackgroundReferrerLaunch;-><init>(Lo/j$extraCallback;)V

    invoke-static {v0, v1}, Lo/j;->extraCallback(Ljava/util/concurrent/CopyOnWriteArrayList;Lo/c$onPostMessage;)V

    .line 829
    :cond_2
    iget-boolean v0, p0, Lo/j$extraCallback;->warmup:Z

    if-eqz v0, :cond_3

    .line 830
    iget-object v0, p0, Lo/j$extraCallback;->ICustomTabsCallback:Lo/InstrumentViewMapping;

    iget-object v1, p0, Lo/j$extraCallback;->onMessageChannelReady:Lo/GoogleReferrer;

    iget-object v1, v1, Lo/GoogleReferrer;->onRelationshipValidationResult:Lo/OfferJsonAdapter;

    iget-object v1, v1, Lo/OfferJsonAdapter;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lo/InstrumentViewMapping;->onNavigationEvent(Ljava/lang/Object;)V

    .line 831
    iget-object v0, p0, Lo/j$extraCallback;->extraCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lo/body;

    invoke-direct {v1, p0}, Lo/body;-><init>(Lo/j$extraCallback;)V

    invoke-static {v0, v1}, Lo/j;->extraCallback(Ljava/util/concurrent/CopyOnWriteArrayList;Lo/c$onPostMessage;)V

    .line 837
    :cond_3
    iget-boolean v0, p0, Lo/j$extraCallback;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_4

    .line 838
    iget-object v0, p0, Lo/j$extraCallback;->extraCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lo/Launch;

    invoke-direct {v1, p0}, Lo/Launch;-><init>(Lo/j$extraCallback;)V

    invoke-static {v0, v1}, Lo/j;->extraCallback(Ljava/util/concurrent/CopyOnWriteArrayList;Lo/c$onPostMessage;)V

    .line 840
    :cond_4
    iget-boolean v0, p0, Lo/j$extraCallback;->onTransact:Z

    if-eqz v0, :cond_5

    .line 841
    iget-object v0, p0, Lo/j$extraCallback;->extraCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lo/CachedEvent;

    invoke-direct {v1, p0}, Lo/CachedEvent;-><init>(Lo/j$extraCallback;)V

    invoke-static {v0, v1}, Lo/j;->extraCallback(Ljava/util/concurrent/CopyOnWriteArrayList;Lo/c$onPostMessage;)V

    .line 845
    :cond_5
    iget-boolean v0, p0, Lo/j$extraCallback;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v0, :cond_6

    .line 846
    iget-object v0, p0, Lo/j$extraCallback;->extraCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lo/SdkServices;

    invoke-direct {v1, p0}, Lo/SdkServices;-><init>(Lo/j$extraCallback;)V

    invoke-static {v0, v1}, Lo/j;->extraCallback(Ljava/util/concurrent/CopyOnWriteArrayList;Lo/c$onPostMessage;)V

    .line 851
    :cond_6
    iget-boolean v0, p0, Lo/j$extraCallback;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_7

    .line 852
    iget-object v0, p0, Lo/j$extraCallback;->extraCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v1, Lo/Stats;->extraCallback:Lo/Stats;

    invoke-static {v0, v1}, Lo/j;->extraCallback(Ljava/util/concurrent/CopyOnWriteArrayList;Lo/c$onPostMessage;)V

    :cond_7
    return-void
.end method
