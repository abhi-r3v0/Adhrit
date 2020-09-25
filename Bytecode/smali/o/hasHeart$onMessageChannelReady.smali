.class public final Lo/hasHeart$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hasHeart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hasHeart$onMessageChannelReady$onPostMessage;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/text/TextDirectionHeuristic;

.field final extraCallback:Landroid/text/PrecomputedText$Params;

.field private final onMessageChannelReady:Landroid/text/TextPaint;

.field private final onNavigationEvent:I

.field private final onPostMessage:I


# direct methods
.method public constructor <init>(Landroid/text/PrecomputedText$Params;)V
    .locals 2

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    .line 216
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, p0, Lo/hasHeart$onMessageChannelReady;->ICustomTabsCallback:Landroid/text/TextDirectionHeuristic;

    .line 217
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getBreakStrategy()I

    move-result v0

    iput v0, p0, Lo/hasHeart$onMessageChannelReady;->onPostMessage:I

    .line 218
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v0

    iput v0, p0, Lo/hasHeart$onMessageChannelReady;->onNavigationEvent:I

    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lo/hasHeart$onMessageChannelReady;->extraCallback:Landroid/text/PrecomputedText$Params;

    return-void
.end method

.method constructor <init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V
    .locals 2

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 199
    new-instance v0, Landroid/text/PrecomputedText$Params$Builder;

    invoke-direct {v0, p1}, Landroid/text/PrecomputedText$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    .line 200
    invoke-virtual {v0, p3}, Landroid/text/PrecomputedText$Params$Builder;->setBreakStrategy(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0, p4}, Landroid/text/PrecomputedText$Params$Builder;->setHyphenationFrequency(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    .line 202
    invoke-virtual {v0, p2}, Landroid/text/PrecomputedText$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroid/text/PrecomputedText$Params$Builder;->build()Landroid/text/PrecomputedText$Params;

    move-result-object v0

    iput-object v0, p0, Lo/hasHeart$onMessageChannelReady;->extraCallback:Landroid/text/PrecomputedText$Params;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lo/hasHeart$onMessageChannelReady;->extraCallback:Landroid/text/PrecomputedText$Params;

    .line 207
    :goto_0
    iput-object p1, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    .line 208
    iput-object p2, p0, Lo/hasHeart$onMessageChannelReady;->ICustomTabsCallback:Landroid/text/TextDirectionHeuristic;

    .line 209
    iput p3, p0, Lo/hasHeart$onMessageChannelReady;->onPostMessage:I

    .line 210
    iput p4, p0, Lo/hasHeart$onMessageChannelReady;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 253
    iget v0, p0, Lo/hasHeart$onMessageChannelReady;->onPostMessage:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 335
    :cond_0
    instance-of v1, p1, Lo/hasHeart$onMessageChannelReady;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 338
    :cond_1
    check-cast p1, Lo/hasHeart$onMessageChannelReady;

    .line 339
    invoke-virtual {p0, p1}, Lo/hasHeart$onMessageChannelReady;->onPostMessage(Lo/hasHeart$onMessageChannelReady;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 342
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v1, v3, :cond_3

    .line 343
    iget-object v1, p0, Lo/hasHeart$onMessageChannelReady;->ICustomTabsCallback:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {p1}, Lo/hasHeart$onMessageChannelReady;->onNavigationEvent()Landroid/text/TextDirectionHeuristic;

    move-result-object p1

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final extraCallback()Landroid/text/TextPaint;
    .locals 1

    .line 228
    iget-object v0, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final hashCode()I
    .locals 14

    .line 352
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    const/16 v2, 0xb

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x18

    if-lt v0, v13, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 353
    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v12

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v11

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    .line 354
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v10

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v9

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v8

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    .line 355
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v2

    aput-object v2, v0, v7

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v0, v6

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v5

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->ICustomTabsCallback:Landroid/text/TextDirectionHeuristic;

    aput-object v2, v0, v4

    iget v2, p0, Lo/hasHeart$onMessageChannelReady;->onPostMessage:I

    .line 356
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    iget v2, p0, Lo/hasHeart$onMessageChannelReady;->onNavigationEvent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 353
    invoke-static {v0}, Lo/isThumbUp;->extraCallback([Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 357
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-lt v0, v13, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    .line 358
    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v12

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v11

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    .line 359
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v10

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v9

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v8

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    .line 360
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v2

    aput-object v2, v0, v7

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v0, v6

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v5

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->ICustomTabsCallback:Landroid/text/TextDirectionHeuristic;

    aput-object v2, v0, v4

    iget v2, p0, Lo/hasHeart$onMessageChannelReady;->onPostMessage:I

    .line 361
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    iget v2, p0, Lo/hasHeart$onMessageChannelReady;->onNavigationEvent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 358
    invoke-static {v0}, Lo/isThumbUp;->extraCallback([Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 362
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    .line 363
    iget-object v1, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v12

    iget-object v1, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v11

    iget-object v1, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    .line 364
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v10

    iget-object v1, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    iget-object v1, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v1

    aput-object v1, v0, v8

    iget-object v1, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    .line 365
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v1, p0, Lo/hasHeart$onMessageChannelReady;->ICustomTabsCallback:Landroid/text/TextDirectionHeuristic;

    aput-object v1, v0, v6

    iget v1, p0, Lo/hasHeart$onMessageChannelReady;->onPostMessage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    iget v1, p0, Lo/hasHeart$onMessageChannelReady;->onNavigationEvent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 363
    invoke-static {v0}, Lo/isThumbUp;->extraCallback([Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 366
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    new-array v0, v3, [Ljava/lang/Object;

    .line 367
    iget-object v1, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v12

    iget-object v1, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v11

    iget-object v1, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    .line 368
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v10

    iget-object v1, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    iget-object v1, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v1

    aput-object v1, v0, v8

    iget-object v1, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    .line 369
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v1, p0, Lo/hasHeart$onMessageChannelReady;->ICustomTabsCallback:Landroid/text/TextDirectionHeuristic;

    aput-object v1, v0, v6

    iget v1, p0, Lo/hasHeart$onMessageChannelReady;->onPostMessage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    iget v1, p0, Lo/hasHeart$onMessageChannelReady;->onNavigationEvent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 367
    invoke-static {v0}, Lo/isThumbUp;->extraCallback([Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_3
    new-array v0, v4, [Ljava/lang/Object;

    .line 371
    iget-object v1, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v12

    iget-object v1, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v11

    iget-object v1, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    .line 372
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v10

    iget-object v1, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    iget-object v1, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    aput-object v1, v0, v8

    iget-object v1, p0, Lo/hasHeart$onMessageChannelReady;->ICustomTabsCallback:Landroid/text/TextDirectionHeuristic;

    aput-object v1, v0, v7

    iget v1, p0, Lo/hasHeart$onMessageChannelReady;->onPostMessage:I

    .line 373
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    iget v1, p0, Lo/hasHeart$onMessageChannelReady;->onNavigationEvent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 371
    invoke-static {v0}, Lo/isThumbUp;->extraCallback([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 265
    iget v0, p0, Lo/hasHeart$onMessageChannelReady;->onNavigationEvent:I

    return v0
.end method

.method public final onNavigationEvent()Landroid/text/TextDirectionHeuristic;
    .locals 1

    .line 241
    iget-object v0, p0, Lo/hasHeart$onMessageChannelReady;->ICustomTabsCallback:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public final onPostMessage(Lo/hasHeart$onMessageChannelReady;)Z
    .locals 3

    .line 275
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 276
    iget v0, p0, Lo/hasHeart$onMessageChannelReady;->onPostMessage:I

    invoke-virtual {p1}, Lo/hasHeart$onMessageChannelReady;->ICustomTabsCallback()I

    move-result v2

    if-eq v0, v2, :cond_0

    return v1

    .line 279
    :cond_0
    iget v0, p0, Lo/hasHeart$onMessageChannelReady;->onNavigationEvent:I

    invoke-virtual {p1}, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 284
    :cond_1
    iget-object v0, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    invoke-virtual {p1}, Lo/hasHeart$onMessageChannelReady;->extraCallback()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    return v1

    .line 287
    :cond_2
    iget-object v0, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v0

    invoke-virtual {p1}, Lo/hasHeart$onMessageChannelReady;->extraCallback()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v2

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    return v1

    .line 290
    :cond_3
    iget-object v0, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v0

    invoke-virtual {p1}, Lo/hasHeart$onMessageChannelReady;->extraCallback()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v2

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    return v1

    .line 293
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_6

    .line 294
    iget-object v0, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    invoke-virtual {p1}, Lo/hasHeart$onMessageChannelReady;->extraCallback()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v2

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_5

    return v1

    .line 297
    :cond_5
    iget-object v0, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-virtual {p1}, Lo/hasHeart$onMessageChannelReady;->extraCallback()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 302
    :cond_6
    iget-object v0, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    invoke-virtual {p1}, Lo/hasHeart$onMessageChannelReady;->extraCallback()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFlags()I

    move-result v2

    if-eq v0, v2, :cond_7

    return v1

    .line 305
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_8

    .line 306
    iget-object v0, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p1}, Lo/hasHeart$onMessageChannelReady;->extraCallback()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    .line 309
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_9

    .line 310
    iget-object v0, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1}, Lo/hasHeart$onMessageChannelReady;->extraCallback()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    .line 314
    :cond_9
    iget-object v0, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_a

    .line 315
    invoke-virtual {p1}, Lo/hasHeart$onMessageChannelReady;->extraCallback()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_b

    return v1

    .line 318
    :cond_a
    iget-object v0, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1}, Lo/hasHeart$onMessageChannelReady;->extraCallback()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v1

    :cond_b
    const/4 p1, 0x1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "textSize="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", textScaleX="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", textSkewX="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", letterSpacing="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", elegantTextHeight="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const-string v3, ", textLocale="

    if-lt v1, v2, :cond_1

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 389
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", typeface="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_3

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", variationSettings="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->onMessageChannelReady:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", textDir="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady;->ICustomTabsCallback:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", breakStrategy="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lo/hasHeart$onMessageChannelReady;->onPostMessage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", hyphenationFrequency="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lo/hasHeart$onMessageChannelReady;->onNavigationEvent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
