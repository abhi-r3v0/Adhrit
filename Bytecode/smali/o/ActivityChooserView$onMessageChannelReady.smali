.class public abstract Lo/ActivityChooserView$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/getSupportCompoundDrawablesTintList;

.field ICustomTabsCallback$Stub:Lo/ActivityChooserModel$ActivityChooserModelClient;

.field asBinder:Landroid/graphics/Rect;

.field asInterface:Lo/setAutoSizeTextTypeWithDefaults;

.field extraCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

.field newSession:Lo/onChooseActivity;

.field onMessageChannelReady:Lo/needsDividerBefore;

.field onNavigationEvent:Lo/setActivityChooserModel;

.field onPostMessage:Lo/getWindowAnimations;

.field onRelationshipValidationResult:Lo/setSupportCompoundDrawablesTintMode;

.field onTransact:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lo/isShowingPopup;",
            ">;"
        }
    .end annotation
.end field

.field warmup:Lo/ActivityChooserModel$HistoricalRecord;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/ActivityChooserView$onMessageChannelReady;->onTransact:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final extraCallback()Lo/ActivityChooserView;
    .locals 2

    .line 435
    iget-object v0, p0, Lo/ActivityChooserView$onMessageChannelReady;->extraCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    if-eqz v0, :cond_a

    .line 438
    iget-object v0, p0, Lo/ActivityChooserView$onMessageChannelReady;->asInterface:Lo/setAutoSizeTextTypeWithDefaults;

    if-eqz v0, :cond_9

    .line 441
    iget-object v0, p0, Lo/ActivityChooserView$onMessageChannelReady;->onPostMessage:Lo/getWindowAnimations;

    if-eqz v0, :cond_8

    .line 444
    iget-object v0, p0, Lo/ActivityChooserView$onMessageChannelReady;->onMessageChannelReady:Lo/needsDividerBefore;

    if-eqz v0, :cond_7

    .line 447
    iget-object v0, p0, Lo/ActivityChooserView$onMessageChannelReady;->newSession:Lo/onChooseActivity;

    if-eqz v0, :cond_6

    .line 450
    iget-object v0, p0, Lo/ActivityChooserView$onMessageChannelReady;->asBinder:Landroid/graphics/Rect;

    if-eqz v0, :cond_5

    .line 453
    iget-object v0, p0, Lo/ActivityChooserView$onMessageChannelReady;->ICustomTabsCallback:Lo/getSupportCompoundDrawablesTintList;

    if-eqz v0, :cond_4

    .line 456
    iget-object v0, p0, Lo/ActivityChooserView$onMessageChannelReady;->onRelationshipValidationResult:Lo/setSupportCompoundDrawablesTintMode;

    if-eqz v0, :cond_3

    .line 459
    iget-object v0, p0, Lo/ActivityChooserView$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/ActivityChooserModel$ActivityChooserModelClient;

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lo/ActivityChooserView$onMessageChannelReady;->onNavigationEvent:Lo/setActivityChooserModel;

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lo/ActivityChooserView$onMessageChannelReady;->warmup:Lo/ActivityChooserModel$HistoricalRecord;

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lo/ActivityChooserView$onMessageChannelReady;->onPostMessage()Lo/ActivityChooserView;

    move-result-object v0

    return-object v0

    .line 466
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "positionIterator can\'t be null, call #positionIterator()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "childGravityResolver can\'t be null, call #childGravityResolver()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "gravityModifiersFactory can\'t be null, call #gravityModifiersFactory()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "placer can\'t be null, call #placer()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "finishingCriteria can\'t be null, call #finishingCriteria()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "offsetRect can\'t be null, call #offsetRect()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "rowStrategy can\'t be null, call #rowStrategy()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cacheStorage can\'t be null, call #cacheStorage()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "border can\'t be null, call #border()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "breaker can\'t be null, call #breaker()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "layoutManager can\'t be null, call #layoutManager()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final onNavigationEvent(Lo/setAutoSizeTextTypeWithDefaults;)Lo/ActivityChooserView$onMessageChannelReady;
    .locals 2

    if-eqz p1, :cond_0

    .line 415
    iput-object p1, p0, Lo/ActivityChooserView$onMessageChannelReady;->asInterface:Lo/setAutoSizeTextTypeWithDefaults;

    return-object p0

    .line 1012
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "breaker shouldn\'t be null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can\'t be null."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method protected abstract onPostMessage()Lo/ActivityChooserView;
.end method
