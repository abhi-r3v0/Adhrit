.class public final Lo/dispatchOnScrolled;
.super Landroid/view/View;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dispatchOnScrolled$onMessageChannelReady;,
        Lo/dispatchOnScrolled$extraCallback;,
        Lo/dispatchOnScrolled$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "onAnimationUpdate",
        "com/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$startAnimation$textAnim$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:I

.field public ICustomTabsCallback$Stub:Ljava/lang/Integer;

.field private ICustomTabsCallback$Stub$Proxy:F

.field private ICustomTabsService:F

.field private ICustomTabsService$Stub:Landroid/graphics/Paint;

.field private ICustomTabsService$Stub$Proxy:F

.field private final IPostMessageService:Lo/isSameListener;

.field private IPostMessageService$Stub:F

.field asBinder:Z

.field public asInterface:Ljava/lang/Integer;

.field private final cancel:Landroid/text/TextPaint;

.field extraCallback:F

.field private extraCommand:F

.field private getInterfaceDescriptor:I

.field private mayLaunchUrl:F

.field private newSession:Lo/nextTransactionOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/nextTransactionOrder<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lo/dispatchOnScrolled$extraCallback;",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getDecoratedBoundsWithMargins$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field public onNavigationEvent:Lo/offsetChildrenVertical;

.field public onPostMessage:Z

.field private onRelationshipValidationResult:F

.field public onTransact:Landroid/media/SoundPool;

.field private postMessage:I

.field private requestPostMessageChannel:Lo/onSuggestionClick$onNavigationEvent;

.field private updateVisuals:Z

.field private validateRelationship:Landroid/graphics/Paint;

.field private warmup:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lo/dispatchOnScrolled;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lo/dispatchOnScrolled;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const-string p3, "Resources.getSystem()"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 23010
    invoke-static {v1, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    .line 46
    iput p2, p0, Lo/dispatchOnScrolled;->onRelationshipValidationResult:F

    .line 55
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lo/dispatchOnScrolled;->onMessageChannelReady:Ljava/util/List;

    .line 67
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Lo/dispatchOnScrolled;->getInterfaceDescriptor:I

    int-to-float p2, p2

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v2, p2

    .line 76
    iput v2, p0, Lo/dispatchOnScrolled;->ICustomTabsService:F

    .line 91
    iput-boolean v1, p0, Lo/dispatchOnScrolled;->warmup:Z

    const/4 p2, -0x1

    .line 93
    iput p2, p0, Lo/dispatchOnScrolled;->ICustomTabsCallback:I

    .line 101
    iput-boolean v1, p0, Lo/dispatchOnScrolled;->updateVisuals:Z

    const/4 v2, 0x5

    .line 110
    iput v2, p0, Lo/dispatchOnScrolled;->postMessage:I

    .line 119
    iget v2, p0, Lo/dispatchOnScrolled;->onRelationshipValidationResult:F

    add-float/2addr v2, v0

    iput v2, p0, Lo/dispatchOnScrolled;->ICustomTabsService$Stub$Proxy:F

    .line 125
    new-instance v0, Lo/dispatchOnScrolled$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/dispatchOnScrolled$ICustomTabsCallback;-><init>(Lo/dispatchOnScrolled;)V

    check-cast v0, Lo/getServerTime;

    const-string v2, "initializer"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 125
    iput-object v2, p0, Lo/dispatchOnScrolled;->IPostMessageService:Lo/isSameListener;

    .line 142
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xe

    .line 143
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v2, 0x4

    .line 144
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 146
    new-instance v2, Landroid/media/SoundPool$Builder;

    invoke-direct {v2}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 147
    invoke-virtual {v2, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    const/16 v2, 0xa

    .line 148
    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    const-string v2, "SoundPool.Builder()\n    \u2026\n                .build()"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/dispatchOnScrolled;->onTransact:Landroid/media/SoundPool;

    const v2, 0x7f120049

    const/4 v3, 0x0

    .line 151
    :try_start_0
    invoke-virtual {v0, p1, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v3

    .line 150
    :goto_0
    iput-object v0, p0, Lo/dispatchOnScrolled;->asInterface:Ljava/lang/Integer;

    .line 158
    :try_start_1
    iget-object v0, p0, Lo/dispatchOnScrolled;->onTransact:Landroid/media/SoundPool;

    const v2, 0x7f120053

    invoke-virtual {v0, p1, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    :goto_1
    iput-object v3, p0, Lo/dispatchOnScrolled;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    .line 166
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 167
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 168
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const-string v2, "#d8d8d8"

    .line 169
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    iget v2, p0, Lo/dispatchOnScrolled;->ICustomTabsService$Stub$Proxy:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 173
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 174
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 175
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    iget v2, p0, Lo/dispatchOnScrolled;->onRelationshipValidationResult:F

    mul-float v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 180
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 181
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    const/high16 v2, -0x1000000

    .line 182
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 180
    iput-object v0, p0, Lo/dispatchOnScrolled;->validateRelationship:Landroid/graphics/Paint;

    .line 185
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 186
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    const v2, -0xf5f3f4

    .line 187
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 24010
    invoke-static {v1, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 189
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 185
    iput-object v0, p0, Lo/dispatchOnScrolled;->ICustomTabsService$Stub:Landroid/graphics/Paint;

    .line 191
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 192
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 193
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24015
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 p3, 0x2

    const/high16 v1, 0x41400000    # 12.0f

    .line 24016
    invoke-static {p3, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    .line 195
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_0

    const p2, 0x7f090001

    .line 197
    invoke-static {p1, p2}, Lo/containsKey;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 191
    :cond_0
    iput-object v0, p0, Lo/dispatchOnScrolled;->cancel:Landroid/text/TextPaint;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lo/dispatchOnScrolled;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private onMessageChannelReady()I
    .locals 3

    .line 111
    iget v0, p0, Lo/dispatchOnScrolled;->postMessage:I

    add-int/lit8 v0, v0, -0x1

    new-instance v1, Lo/forEachTree;

    iget v2, p0, Lo/dispatchOnScrolled;->postMessage:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lo/forEachTree;-><init>(II)V

    sget-object v0, Lo/getRootNode;->onNavigationEvent:Lo/getRootNode$extraCallback;

    check-cast v0, Lo/getRootNode;

    invoke-static {v1, v0}, Lo/viewForQuery;->onMessageChannelReady(Lo/forEachTree;Lo/getRootNode;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private final onMessageChannelReady(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 286
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    .line 289
    invoke-direct {p0, p1}, Lo/dispatchOnScrolled;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 292
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    check-cast p1, Ljava/lang/CharSequence;

    const-string v2, " "

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 294
    check-cast p1, Ljava/lang/Iterable;

    .line 568
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :cond_1
    const/4 v4, 0x0

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string/jumbo v6, "stringBuilder.toString()"

    if-eqz v5, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 295
    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x1

    if-lez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_2

    .line 296
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v8

    add-int/2addr v4, v7

    const/16 v7, 0xd

    if-le v4, v7, :cond_7

    .line 299
    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_5

    move-object v7, v5

    goto :goto_3

    .line 300
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    :goto_3
    invoke-direct {p0, v7}, Lo/dispatchOnScrolled;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_1

    const-string v4, "$this$clear"

    .line 302
    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8017
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 303
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v8

    add-int/2addr v4, v3

    goto :goto_0

    .line 307
    :cond_7
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 313
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lo/dispatchOnScrolled;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    check-cast v0, Ljava/lang/Iterable;

    .line 314
    invoke-static {v0}, Lo/getSessionPersistenceKey;->onNavigationEvent(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final onMessageChannelReady(FLo/nextTransactionOrder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lo/nextTransactionOrder<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lo/dispatchOnScrolled$onMessageChannelReady;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 449
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 450
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    check-cast v2, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x10e

    .line 451
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v2, 0x96

    .line 452
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 453
    move-object v2, v1

    check-cast v2, Landroid/animation/Animator;

    .line 592
    move-object v3, p0

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 456
    move-object v2, p0

    check-cast v2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 463
    invoke-direct {p0}, Lo/dispatchOnScrolled;->onMessageChannelReady()I

    move-result v2

    new-array v0, v0, [F

    .line 464
    iget v3, p0, Lo/dispatchOnScrolled;->extraCallback:F

    const/4 v4, 0x0

    aput v3, v0, v4

    int-to-float v3, v2

    add-float/2addr p1, v3

    const/4 v3, 0x1

    aput p1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 465
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 23000
    sget-object v0, Lo/isInLayout;->onServiceConnected:Lo/isAdded;

    sget-object v3, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v4, 0x53

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x3e80

    .line 466
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 467
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e570a3d    # 0.21f

    const v4, 0x3ee147ae    # 0.44f

    const v5, 0x3eae147b    # 0.34f

    const v6, 0x3f7851ec    # 0.97f

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    check-cast v0, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x2ee0

    .line 469
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 470
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const v3, 0x3fcccccd    # 1.6f

    invoke-direct {v0, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    check-cast v0, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 472
    :goto_0
    new-instance v0, Lo/dispatchOnScrolled$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/dispatchOnScrolled$onNavigationEvent;-><init>(Lo/dispatchOnScrolled;)V

    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 479
    move-object v0, p1

    check-cast v0, Landroid/animation/Animator;

    .line 600
    new-instance v3, Lo/dispatchOnScrolled$onTransact;

    invoke-direct {v3, p0, p2}, Lo/dispatchOnScrolled$onTransact;-><init>(Lo/dispatchOnScrolled;Lo/nextTransactionOrder;)V

    .line 606
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 613
    new-instance v3, Lo/dispatchOnScrolled$asInterface;

    invoke-direct {v3, p0, p2, v2, v1}, Lo/dispatchOnScrolled$asInterface;-><init>(Lo/dispatchOnScrolled;Lo/nextTransactionOrder;ILandroid/animation/ValueAnimator;)V

    .line 619
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 492
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 322
    iget-object v0, p0, Lo/dispatchOnScrolled;->requestPostMessageChannel:Lo/onSuggestionClick$onNavigationEvent;

    const-string/jumbo v1, "wheel"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 9012
    :cond_0
    iget v0, v0, Lo/onSuggestionClick$onNavigationEvent;->onPostMessage:F

    .line 322
    iget-object v2, p0, Lo/dispatchOnScrolled;->requestPostMessageChannel:Lo/onSuggestionClick$onNavigationEvent;

    if-nez v2, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 10012
    :cond_1
    iget v1, v2, Lo/onSuggestionClick$onNavigationEvent;->onPostMessage:F

    const v2, 0x400ccccd    # 2.2f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 323
    iget-object v1, p0, Lo/dispatchOnScrolled;->cancel:Landroid/text/TextPaint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 325
    iget-object v1, p0, Lo/dispatchOnScrolled;->cancel:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    mul-float v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_2
    return-object p1
.end method


# virtual methods
.method public final invalidate()V
    .locals 13

    .line 15408
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Lo/asBinder;

    invoke-virtual {v0}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "(context as AppCompatActivity).lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15570
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 15571
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 15572
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 16212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_4

    .line 17034
    iget v2, p0, Lo/dispatchOnScrolled;->ICustomTabsCallback:I

    .line 15409
    invoke-virtual {p0}, Lo/dispatchOnScrolled;->onNavigationEvent()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 18034
    iget v2, p0, Lo/dispatchOnScrolled;->ICustomTabsCallback:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 15411
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-lt v2, v4, :cond_1

    const/4 v2, 0x3

    const/4 v4, 0x2

    .line 15412
    invoke-virtual {p0, v2, v4}, Landroid/view/View;->performHapticFeedback(II)Z

    goto :goto_0

    .line 15414
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "context"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0xa

    invoke-static {v2, v6, v7}, Lo/addAllInternal;->onNavigationEvent(Landroid/content/Context;J)V

    .line 19034
    :goto_0
    iget-object v2, p0, Lo/dispatchOnScrolled;->asInterface:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 15416
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 20034
    iget-object v6, p0, Lo/dispatchOnScrolled;->onTransact:Landroid/media/SoundPool;

    const v8, 0x3e4ccccd    # 0.2f

    const v9, 0x3e4ccccd    # 0.2f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    .line 15417
    invoke-virtual/range {v6 .. v12}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 15420
    :cond_2
    invoke-virtual {p0}, Lo/dispatchOnScrolled;->onNavigationEvent()I

    move-result v2

    .line 21034
    iput v2, p0, Lo/dispatchOnScrolled;->ICustomTabsCallback:I

    .line 15574
    :cond_3
    iput-boolean v5, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_1

    .line 15575
    :cond_4
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_5

    .line 15576
    new-instance v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/dispatchOnScrolled;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 15577
    iget-object v1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 15579
    :cond_5
    :goto_1
    new-instance v1, Lo/dispatchOnScrolled$onRelationshipValidationResult;

    invoke-direct {v1, v3, v0}, Lo/dispatchOnScrolled$onRelationshipValidationResult;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    .line 391
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 15408
    :cond_6
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 28034
    iput-boolean p1, p0, Lo/dispatchOnScrolled;->onPostMessage:Z

    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 28457
    invoke-virtual {p0}, Lo/dispatchOnScrolled;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "it"

    .line 28458
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lo/dispatchOnScrolled;->setTextAnimatorValue(F)V

    .line 28459
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 28458
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const-string v0, "Resources.getSystem()"

    if-eqz v8, :cond_c

    .line 213
    iget v2, v1, Lo/dispatchOnScrolled;->ICustomTabsService$Stub$Proxy:F

    .line 536
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 537
    invoke-virtual {v8, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2229
    :try_start_0
    iget-object v2, v1, Lo/dispatchOnScrolled;->requestPostMessageChannel:Lo/onSuggestionClick$onNavigationEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const-string/jumbo v3, "wheel"

    if-nez v2, :cond_0

    :try_start_1
    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3008
    :cond_0
    iget v10, v2, Lo/onSuggestionClick$onNavigationEvent;->onMessageChannelReady:F

    .line 2230
    iget-object v2, v1, Lo/dispatchOnScrolled;->requestPostMessageChannel:Lo/onSuggestionClick$onNavigationEvent;

    if-nez v2, :cond_1

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3010
    :cond_1
    iget v11, v2, Lo/onSuggestionClick$onNavigationEvent;->onNavigationEvent:F

    .line 2231
    iget-object v2, v1, Lo/dispatchOnScrolled;->requestPostMessageChannel:Lo/onSuggestionClick$onNavigationEvent;

    if-nez v2, :cond_2

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3012
    :cond_2
    iget v12, v2, Lo/onSuggestionClick$onNavigationEvent;->onPostMessage:F

    .line 2232
    new-instance v13, Landroid/graphics/RectF;

    sub-float v2, v10, v12

    sub-float v3, v11, v12

    add-float v4, v10, v12

    add-float v5, v11, v12

    invoke-direct {v13, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2234
    iget v2, v1, Lo/dispatchOnScrolled;->extraCallback:F

    invoke-virtual {v8, v2, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2236
    iget v2, v1, Lo/dispatchOnScrolled;->ICustomTabsCallback$Stub$Proxy:F

    .line 2238
    iget v14, v1, Lo/dispatchOnScrolled;->getInterfaceDescriptor:I

    const/4 v3, 0x0

    move v15, v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v14, :cond_b

    .line 2548
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    const/4 v5, 0x0

    .line 2549
    invoke-virtual {v8, v5, v5}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 2241
    :try_start_2
    invoke-virtual {v8, v15, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2243
    iget v4, v1, Lo/dispatchOnScrolled;->ICustomTabsService:F

    iget-object v3, v1, Lo/dispatchOnScrolled;->ICustomTabsService$Stub:Landroid/graphics/Paint;

    const v2, -0xf5f3f4

    .line 2244
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/16 v16, 0x0

    const/16 v17, 0x1

    const v18, -0xf5f3f4

    move-object/from16 v2, p1

    move-object/from16 v19, v3

    move-object v3, v13

    move/from16 v20, v4

    move/from16 v4, v16

    move/from16 v5, v20

    move/from16 v21, v6

    move/from16 v6, v17

    move/from16 v16, v14

    move v14, v7

    move-object/from16 v7, v19

    .line 2243
    :try_start_3
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 2247
    iget v5, v1, Lo/dispatchOnScrolled;->ICustomTabsService:F

    iget-object v7, v1, Lo/dispatchOnScrolled;->validateRelationship:Landroid/graphics/Paint;

    .line 2248
    iget-object v2, v1, Lo/dispatchOnScrolled;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getDecoratedBoundsWithMargins$onNavigationEvent;

    .line 3113
    iget-object v2, v2, Lo/getDecoratedBoundsWithMargins$onNavigationEvent;->extraCallback:Ljava/lang/Integer;

    const/16 v17, -0x1

    if-eqz v2, :cond_3

    .line 2248
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    :goto_1
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move-object v3, v13

    .line 2247
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 2556
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    const/4 v3, 0x0

    .line 2557
    invoke-virtual {v8, v3, v3}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2254
    :try_start_4
    iget-object v4, v1, Lo/dispatchOnScrolled;->cancel:Landroid/text/TextPaint;

    iget-object v5, v1, Lo/dispatchOnScrolled;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/getDecoratedBoundsWithMargins$onNavigationEvent;

    .line 4113
    iget-object v5, v5, Lo/getDecoratedBoundsWithMargins$onNavigationEvent;->onMessageChannelReady:Ljava/lang/Boolean;

    .line 2254
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, -0x1

    goto :goto_2

    :cond_4
    const v5, -0xf5f3f4

    :goto_2
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2255
    iget-object v4, v1, Lo/dispatchOnScrolled;->cancel:Landroid/text/TextPaint;

    .line 5015
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/4 v6, 0x2

    const/high16 v7, 0x41500000    # 13.0f

    .line 5016
    invoke-static {v6, v7, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    .line 6000
    iget-object v6, v1, Lo/dispatchOnScrolled;->IPostMessageService:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    mul-float v5, v5, v6

    .line 2255
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2257
    iget-object v4, v1, Lo/dispatchOnScrolled;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getDecoratedBoundsWithMargins$onNavigationEvent;

    .line 6113
    iget-object v4, v4, Lo/getDecoratedBoundsWithMargins$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    if-nez v4, :cond_5

    const-string v4, ""

    .line 2257
    :cond_5
    invoke-direct {v1, v4}, Lo/dispatchOnScrolled;->onMessageChannelReady(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 2260
    iget v5, v1, Lo/dispatchOnScrolled;->ICustomTabsService:F

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_6

    const/high16 v6, 0x40100000    # 2.25f

    goto :goto_3

    :cond_6
    const v6, 0x3fe66666    # 1.8f

    :goto_3
    div-float/2addr v5, v6

    invoke-virtual {v8, v5, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2263
    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    .line 2266
    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    const v17, 0x40133333    # 2.3f

    div-float v17, v12, v17

    add-float v6, v6, v17

    invoke-virtual/range {p0 .. p0}, Lo/dispatchOnScrolled;->onNavigationEvent()I

    move-result v3

    if-ne v3, v14, :cond_7

    iget-boolean v3, v1, Lo/dispatchOnScrolled;->onPostMessage:Z

    if-eqz v3, :cond_7

    .line 7009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    move-object/from16 v17, v0

    const/high16 v0, 0x41a00000    # 20.0f

    .line 7010
    invoke-static {v7, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 2266
    iget v3, v1, Lo/dispatchOnScrolled;->mayLaunchUrl:F

    mul-float v0, v0, v3

    goto :goto_4

    :cond_7
    move-object/from16 v17, v0

    const/4 v0, 0x0

    :goto_4
    add-float/2addr v6, v0

    .line 2268
    iget-object v0, v1, Lo/dispatchOnScrolled;->cancel:Landroid/text/TextPaint;

    const/high16 v3, 0x437f0000    # 255.0f

    invoke-virtual/range {p0 .. p0}, Lo/dispatchOnScrolled;->onNavigationEvent()I

    move-result v7

    const/high16 v18, 0x3f800000    # 1.0f

    if-ne v7, v14, :cond_8

    iget-boolean v7, v1, Lo/dispatchOnScrolled;->onPostMessage:Z

    if-eqz v7, :cond_8

    iget v7, v1, Lo/dispatchOnScrolled;->mayLaunchUrl:F

    sub-float v18, v18, v7

    :cond_8
    mul-float v3, v3, v18

    .line 7132
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 2268
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2269
    check-cast v4, Ljava/lang/Iterable;

    .line 2560
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2270
    iget-object v4, v1, Lo/dispatchOnScrolled;->cancel:Landroid/text/TextPaint;

    check-cast v4, Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v6, v5, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2272
    iget-object v3, v1, Lo/dispatchOnScrolled;->cancel:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const v4, 0x3f99999a    # 1.2f

    mul-float v3, v3, v4

    add-float/2addr v5, v3

    goto :goto_5

    .line 2562
    :cond_9
    :try_start_5
    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move/from16 v3, v21

    .line 2565
    :try_start_6
    invoke-virtual {v8, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2278
    iget v0, v1, Lo/dispatchOnScrolled;->ICustomTabsService:F
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    add-float/2addr v15, v0

    add-int/lit8 v7, v14, 0x1

    move/from16 v14, v16

    move-object/from16 v0, v17

    goto/16 :goto_0

    :cond_a
    move/from16 v3, v21

    .line 7132
    :try_start_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot round NaN value."

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move/from16 v3, v21

    .line 2562
    :goto_6
    :try_start_8
    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move/from16 v3, v21

    goto :goto_7

    :catchall_4
    move-exception v0

    move v3, v6

    .line 2565
    :goto_7
    :try_start_9
    invoke-virtual {v8, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 541
    :cond_b
    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_5
    move-exception v0

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    :cond_c
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 3

    .line 208
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2201
    new-instance p1, Lo/onSuggestionClick$onNavigationEvent;

    .line 2202
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    :goto_0
    int-to-float p2, p2

    iget v0, p0, Lo/dispatchOnScrolled;->ICustomTabsService$Stub$Proxy:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    sub-float/2addr p2, v0

    .line 2203
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_1
    int-to-float v0, v0

    iget v2, p0, Lo/dispatchOnScrolled;->ICustomTabsService$Stub$Proxy:F

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    .line 2201
    invoke-direct {p1, p2, v0}, Lo/onSuggestionClick$onNavigationEvent;-><init>(FF)V

    iput-object p1, p0, Lo/dispatchOnScrolled;->requestPostMessageChannel:Lo/onSuggestionClick$onNavigationEvent;

    return-void
.end method

.method public final onNavigationEvent()I
    .locals 3

    .line 399
    iget v0, p0, Lo/dispatchOnScrolled;->extraCallback:F

    iget v1, p0, Lo/dispatchOnScrolled;->ICustomTabsService:F

    div-float/2addr v0, v1

    iget v1, p0, Lo/dispatchOnScrolled;->getInterfaceDescriptor:I

    int-to-float v2, v1

    rem-float/2addr v0, v2

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    int-to-float v1, v1

    sub-float/2addr v1, v0

    goto :goto_0

    :cond_0
    neg-float v1, v0

    :goto_0
    float-to-int v0, v1

    return v0
.end method

.method public final onNavigationEvent(IZLo/nextTransactionOrder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lo/nextTransactionOrder<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lo/dispatchOnScrolled$onMessageChannelReady;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    .line 21514
    iget-object v0, p0, Lo/dispatchOnScrolled;->onNavigationEvent:Lo/offsetChildrenVertical;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 22026
    iget-boolean v0, v0, Lo/offsetChildrenVertical;->onMessageChannelReady:Z

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 433
    :cond_1
    iput-boolean v1, p0, Lo/dispatchOnScrolled;->asBinder:Z

    .line 434
    iget v0, p0, Lo/dispatchOnScrolled;->getInterfaceDescriptor:I

    sub-int/2addr v0, p1

    int-to-float v0, v0

    iget v3, p0, Lo/dispatchOnScrolled;->ICustomTabsService:F

    mul-float v0, v0, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    if-eqz p2, :cond_2

    .line 436
    invoke-direct {p0, v0, p3}, Lo/dispatchOnScrolled;->onMessageChannelReady(FLo/nextTransactionOrder;)V

    return-void

    .line 438
    :cond_2
    iput v0, p0, Lo/dispatchOnScrolled;->extraCallback:F

    .line 439
    iput-boolean v2, p0, Lo/dispatchOnScrolled;->onPostMessage:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 440
    iput p2, p0, Lo/dispatchOnScrolled;->mayLaunchUrl:F

    .line 441
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 442
    iget-object p2, p0, Lo/dispatchOnScrolled;->onNavigationEvent:Lo/offsetChildrenVertical;

    if-eqz p2, :cond_4

    iget-object p3, p0, Lo/dispatchOnScrolled;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/getDecoratedBoundsWithMargins$onNavigationEvent;

    .line 22113
    iget-object p3, p3, Lo/getDecoratedBoundsWithMargins$onNavigationEvent;->extraCallback:Ljava/lang/Integer;

    if-eqz p3, :cond_3

    .line 442
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    goto :goto_1

    :cond_3
    const/4 p3, -0x1

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v1, v0}, Lo/offsetChildrenVertical;->onNavigationEvent(IIZLo/nextTransactionOrder;)V

    :cond_4
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 11000
    sget-object v0, Lo/isInLayout;->AudioAttributesImplBaseParcelizer:Lo/isAdded;

    sget-object v1, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v2, 0x2f

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 335
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 11514
    :cond_1
    iget-object v0, p0, Lo/dispatchOnScrolled;->onNavigationEvent:Lo/offsetChildrenVertical;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 12026
    iget-boolean v0, v0, Lo/offsetChildrenVertical;->onMessageChannelReady:Z

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    return v1

    .line 341
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 348
    iget-boolean v4, p0, Lo/dispatchOnScrolled;->updateVisuals:Z

    const-string/jumbo v5, "wheel"

    if-nez v4, :cond_6

    iget-object v4, p0, Lo/dispatchOnScrolled;->requestPostMessageChannel:Lo/onSuggestionClick$onNavigationEvent;

    if-nez v4, :cond_4

    invoke-static {v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 13015
    :cond_4
    iget v6, v4, Lo/onSuggestionClick$onNavigationEvent;->onMessageChannelReady:F

    sub-float/2addr v6, v0

    iget v7, v4, Lo/onSuggestionClick$onNavigationEvent;->onMessageChannelReady:F

    sub-float/2addr v7, v0

    mul-float v6, v6, v7

    iget v7, v4, Lo/onSuggestionClick$onNavigationEvent;->onNavigationEvent:F

    sub-float/2addr v7, v3

    iget v8, v4, Lo/onSuggestionClick$onNavigationEvent;->onNavigationEvent:F

    sub-float/2addr v8, v3

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    iget v8, v4, Lo/onSuggestionClick$onNavigationEvent;->onPostMessage:F

    iget v4, v4, Lo/onSuggestionClick$onNavigationEvent;->onPostMessage:F

    mul-float v8, v8, v4

    float-to-double v8, v8

    const-wide v10, 0x3ff3333333333333L    # 1.2

    mul-double v8, v8, v10

    cmpg-double v4, v6, v8

    if-gtz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_6

    return v1

    .line 352
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_d

    if-eq p1, v2, :cond_c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    goto/16 :goto_2

    .line 357
    :cond_7
    new-instance p1, Lo/addWrite;

    iget v1, p0, Lo/dispatchOnScrolled;->extraCommand:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v4, p0, Lo/dispatchOnScrolled;->IPostMessageService$Stub:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {p1, v1, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14000
    iget-object v1, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 357
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 15000
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 357
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 359
    iget-object v4, p0, Lo/dispatchOnScrolled;->requestPostMessageChannel:Lo/onSuggestionClick$onNavigationEvent;

    if-nez v4, :cond_8

    invoke-static {v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 15008
    :cond_8
    iget v4, v4, Lo/onSuggestionClick$onNavigationEvent;->onMessageChannelReady:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_9

    neg-float p1, p1

    .line 363
    :cond_9
    iget-object v4, p0, Lo/dispatchOnScrolled;->requestPostMessageChannel:Lo/onSuggestionClick$onNavigationEvent;

    if-nez v4, :cond_a

    invoke-static {v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 15010
    :cond_a
    iget v4, v4, Lo/onSuggestionClick$onNavigationEvent;->onNavigationEvent:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_b

    neg-float v1, v1

    :cond_b
    add-float/2addr v1, p1

    const/high16 p1, 0x3e900000    # 0.28125f

    mul-float v1, v1, p1

    .line 15378
    iget-boolean p1, p0, Lo/dispatchOnScrolled;->asBinder:Z

    if-nez p1, :cond_e

    .line 15379
    iget p1, p0, Lo/dispatchOnScrolled;->extraCallback:F

    add-float/2addr p1, v1

    iput p1, p0, Lo/dispatchOnScrolled;->extraCallback:F

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    .line 15380
    iput p1, p0, Lo/dispatchOnScrolled;->extraCallback:F

    .line 15381
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15382
    iget-object p1, p0, Lo/dispatchOnScrolled;->newSession:Lo/nextTransactionOrder;

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lo/dispatchOnScrolled;->onNavigationEvent()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Lo/dispatchOnScrolled$extraCallback$onNavigationEvent;->onPostMessage:Lo/dispatchOnScrolled$extraCallback$onNavigationEvent;

    invoke-interface {p1, v1, v4}, Lo/nextTransactionOrder;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 369
    :cond_c
    iget-object p1, p0, Lo/dispatchOnScrolled;->newSession:Lo/nextTransactionOrder;

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lo/dispatchOnScrolled;->onNavigationEvent()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Lo/dispatchOnScrolled$extraCallback$onMessageChannelReady;->onPostMessage:Lo/dispatchOnScrolled$extraCallback$onMessageChannelReady;

    invoke-interface {p1, v1, v4}, Lo/nextTransactionOrder;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 354
    :cond_d
    iget-object p1, p0, Lo/dispatchOnScrolled;->newSession:Lo/nextTransactionOrder;

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lo/dispatchOnScrolled;->onNavigationEvent()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Lo/dispatchOnScrolled$extraCallback$onPostMessage;->extraCallback:Lo/dispatchOnScrolled$extraCallback$onPostMessage;

    invoke-interface {p1, v1, v4}, Lo/nextTransactionOrder;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_e
    :goto_2
    iput v0, p0, Lo/dispatchOnScrolled;->extraCommand:F

    .line 373
    iput v3, p0, Lo/dispatchOnScrolled;->IPostMessageService$Stub:F

    return v2
.end method

.method public final setAnimationEnabled(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lo/dispatchOnScrolled;->warmup:Z

    return-void
.end method

.method public final setCurrentPosition(I)V
    .locals 2

    .line 403
    iget-boolean v0, p0, Lo/dispatchOnScrolled;->warmup:Z

    const/4 v1, 0x0

    .line 21430
    invoke-virtual {p0, p1, v0, v1}, Lo/dispatchOnScrolled;->onNavigationEvent(IZLo/nextTransactionOrder;)V

    return-void
.end method

.method public final setMinNumberRotation(I)V
    .locals 0

    .line 110
    iput p1, p0, Lo/dispatchOnScrolled;->postMessage:I

    return-void
.end method

.method public final setNumberOfPie(I)V
    .locals 1

    .line 69
    iput p1, p0, Lo/dispatchOnScrolled;->getInterfaceDescriptor:I

    int-to-float p1, p1

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr v0, p1

    .line 2078
    iput v0, p0, Lo/dispatchOnScrolled;->ICustomTabsService:F

    .line 2079
    iget-object p1, p0, Lo/dispatchOnScrolled;->onNavigationEvent:Lo/offsetChildrenVertical;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lo/offsetChildrenVertical;->setPieAngle(F)V

    :cond_0
    return-void
.end method

.method public final setOutsideTouchEnabled(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lo/dispatchOnScrolled;->updateVisuals:Z

    return-void
.end method

.method public final setPieList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getDecoratedBoundsWithMargins$onNavigationEvent;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lo/dispatchOnScrolled;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    iget-object v0, p0, Lo/dispatchOnScrolled;->onMessageChannelReady:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    iget-object p1, p0, Lo/dispatchOnScrolled;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lo/dispatchOnScrolled;->setNumberOfPie(I)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 60
    iput p1, p0, Lo/dispatchOnScrolled;->extraCallback:F

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setRevealView(Lo/offsetChildrenVertical;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    iget v0, p0, Lo/dispatchOnScrolled;->ICustomTabsService$Stub$Proxy:F

    invoke-virtual {p1, v0}, Lo/offsetChildrenVertical;->setPadding(F)V

    .line 509
    iget v0, p0, Lo/dispatchOnScrolled;->ICustomTabsService:F

    invoke-virtual {p1, v0}, Lo/offsetChildrenVertical;->setPieAngle(F)V

    .line 510
    iput-object p1, p0, Lo/dispatchOnScrolled;->onNavigationEvent:Lo/offsetChildrenVertical;

    return-void
.end method

.method public final setSpinListener(Lo/nextTransactionOrder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/nextTransactionOrder<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lo/dispatchOnScrolled$extraCallback;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    iput-object p1, p0, Lo/dispatchOnScrolled;->newSession:Lo/nextTransactionOrder;

    return-void
.end method

.method public final setStartingAngle(F)V
    .locals 0

    .line 85
    iput p1, p0, Lo/dispatchOnScrolled;->ICustomTabsCallback$Stub$Proxy:F

    return-void
.end method

.method public final setTextAnimatorValue(F)V
    .locals 0

    .line 97
    iput p1, p0, Lo/dispatchOnScrolled;->mayLaunchUrl:F

    return-void
.end method
