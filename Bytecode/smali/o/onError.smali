.class Lo/onError;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onError$onPostMessage;,
        Lo/onError$onNavigationEvent;,
        Lo/onError$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static extraCallback:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final onNavigationEvent:Landroid/graphics/RectF;

.field private static onPostMessage:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:Z

.field private ICustomTabsCallback$Stub:Z

.field private final ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

.field private ICustomTabsService:Landroid/text/TextPaint;

.field private asBinder:F

.field private asInterface:F

.field private final getInterfaceDescriptor:Lo/onError$onMessageChannelReady;

.field private final newSession:Landroid/content/Context;

.field private onMessageChannelReady:I

.field private onRelationshipValidationResult:F

.field private onTransact:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lo/onError;->onNavigationEvent:Landroid/graphics/RectF;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lo/onError;->onPostMessage:Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lo/onError;->extraCallback:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lo/onError;->onMessageChannelReady:I

    .line 87
    iput-boolean v0, p0, Lo/onError;->ICustomTabsCallback:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 89
    iput v1, p0, Lo/onError;->asInterface:F

    .line 91
    iput v1, p0, Lo/onError;->onRelationshipValidationResult:F

    .line 93
    iput v1, p0, Lo/onError;->asBinder:F

    new-array v1, v0, [I

    .line 96
    iput-object v1, p0, Lo/onError;->onTransact:[I

    .line 100
    iput-boolean v0, p0, Lo/onError;->ICustomTabsCallback$Stub:Z

    .line 151
    iput-object p1, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/onError;->newSession:Landroid/content/Context;

    .line 153
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_0

    .line 154
    new-instance p1, Lo/onError$onPostMessage;

    invoke-direct {p1}, Lo/onError$onPostMessage;-><init>()V

    iput-object p1, p0, Lo/onError;->getInterfaceDescriptor:Lo/onError$onMessageChannelReady;

    return-void

    .line 155
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    .line 156
    new-instance p1, Lo/onError$onNavigationEvent;

    invoke-direct {p1}, Lo/onError$onNavigationEvent;-><init>()V

    iput-object p1, p0, Lo/onError;->getInterfaceDescriptor:Lo/onError$onMessageChannelReady;

    return-void

    .line 158
    :cond_1
    new-instance p1, Lo/onError$onMessageChannelReady;

    invoke-direct {p1}, Lo/onError$onMessageChannelReady;-><init>()V

    iput-object p1, p0, Lo/onError;->getInterfaceDescriptor:Lo/onError$onMessageChannelReady;

    return-void
.end method

.method private ICustomTabsCallback(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;
    .locals 9

    .line 803
    iget-object v0, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v6

    .line 804
    iget-object v0, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v7

    .line 805
    iget-object v0, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v8

    .line 809
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v3, p0, Lo/onError;->ICustomTabsService:Landroid/text/TextPaint;

    move-object v1, v0

    move-object v2, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private static ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 862
    :try_start_0
    invoke-static {p1}, Lo/onError;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 867
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to access TextView#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " member"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ACTVAutoSizeHelper"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p2
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3

    .line 877
    :try_start_0
    sget-object v0, Lo/onError;->onPostMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 879
    const-class v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 881
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 883
    sget-object v1, Lo/onError;->onPostMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 889
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to retrieve TextView#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "() method"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ACTVAutoSizeHelper"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private ICustomTabsCallback(F)V
    .locals 3

    .line 657
    iget-object v0, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3

    .line 658
    iget-object v0, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 661
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 662
    iget-object p1, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isInLayout()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 665
    :goto_0
    iget-object v0, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 667
    iput-boolean v1, p0, Lo/onError;->ICustomTabsCallback:Z

    :try_start_0
    const-string v0, "nullLayouts"

    .line 671
    invoke-static {v0}, Lo/onError;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 673
    iget-object v2, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ACTVAutoSizeHelper"

    const-string v2, "Failed to invoke TextView#nullLayouts() method"

    .line 676
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    if-nez p1, :cond_2

    .line 680
    iget-object p1, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_2

    .line 682
    :cond_2
    iget-object p1, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 685
    :goto_2
    iget-object p1, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method private asBinder()Z
    .locals 4

    .line 495
    iget-object v0, p0, Lo/onError;->onTransact:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 496
    :goto_0
    iput-boolean v3, p0, Lo/onError;->ICustomTabsCallback$Stub:Z

    if-eqz v3, :cond_1

    .line 498
    iput v2, p0, Lo/onError;->onMessageChannelReady:I

    .line 499
    iget-object v3, p0, Lo/onError;->onTransact:[I

    aget v1, v3, v1

    int-to-float v1, v1

    iput v1, p0, Lo/onError;->onRelationshipValidationResult:F

    sub-int/2addr v0, v2

    .line 500
    aget v0, v3, v0

    int-to-float v0, v0

    iput v0, p0, Lo/onError;->asBinder:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 501
    iput v0, p0, Lo/onError;->asInterface:F

    .line 503
    :cond_1
    iget-boolean v0, p0, Lo/onError;->ICustomTabsCallback$Stub:Z

    return v0
.end method

.method private extraCallback(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;
    .locals 3

    .line 778
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lo/onError;->ICustomTabsService:Landroid/text/TextPaint;

    const/4 v2, 0x0

    .line 777
    invoke-static {p1, v2, v0, v1, p3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 780
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    iget-object p3, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    .line 782
    invoke-virtual {p3}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result p3

    iget-object v0, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    .line 783
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v0

    .line 781
    invoke-virtual {p2, p3, v0}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    iget-object p3, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    .line 784
    invoke-virtual {p3}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    iget-object p3, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    .line 785
    invoke-virtual {p3}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    iget-object p3, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    .line 786
    invoke-virtual {p3}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    const/4 p3, -0x1

    if-ne p4, p3, :cond_0

    const p4, 0x7fffffff

    .line 787
    :cond_0
    invoke-virtual {p2, p4}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 792
    :try_start_0
    iget-object p2, p0, Lo/onError;->getInterfaceDescriptor:Lo/onError$onMessageChannelReady;

    iget-object p3, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-virtual {p2, p1, p3}, Lo/onError$onMessageChannelReady;->onNavigationEvent(Landroid/text/StaticLayout$Builder;Landroid/widget/TextView;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "ACTVAutoSizeHelper"

    const-string p3, "Failed to obtain TextDirectionHeuristic, auto size may be incorrect"

    .line 795
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :goto_0
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1
.end method

.method private extraCallback([I)[I
    .locals 6

    .line 508
    array-length v0, p1

    if-nez v0, :cond_0

    return-object p1

    .line 512
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 514
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 516
    aget v4, p1, v3

    if-lez v4, :cond_1

    .line 519
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    .line 520
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 524
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_3

    return-object p1

    .line 527
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    .line 528
    new-array v0, p1, [I

    :goto_1
    if-ge v2, p1, :cond_4

    .line 530
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method static onMessageChannelReady(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 844
    :try_start_0
    invoke-static {p1}, Lo/onError;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 845
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "ACTVAutoSizeHelper"

    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to invoke TextView#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() method"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-object p2

    .line 853
    :goto_1
    throw p0
.end method

.method private onMessageChannelReady(FFF)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "px) is less or equal to (0px)"

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-lez v2, :cond_2

    cmpg-float v2, p2, p1

    if-lez v2, :cond_1

    cmpg-float v1, p3, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 563
    iput v0, p0, Lo/onError;->onMessageChannelReady:I

    .line 564
    iput p1, p0, Lo/onError;->onRelationshipValidationResult:F

    .line 565
    iput p2, p0, Lo/onError;->asBinder:F

    .line 566
    iput p3, p0, Lo/onError;->asInterface:F

    const/4 p1, 0x0

    .line 567
    iput-boolean p1, p0, Lo/onError;->ICustomTabsCallback$Stub:Z

    return-void

    .line 558
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "The auto-size step granularity ("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 552
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Maximum auto-size text size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "px) is less or equal to minimum auto-size text size ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "px)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 547
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Minimum auto-size text size ("

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private onMessageChannelReady(ILandroid/graphics/RectF;)Z
    .locals 5

    .line 742
    iget-object v0, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 743
    iget-object v1, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 745
    iget-object v2, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-interface {v1, v0, v2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 751
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    const/4 v3, -0x1

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 752
    :goto_0
    invoke-virtual {p0, p1}, Lo/onError;->onMessageChannelReady(I)V

    .line 755
    iget-object p1, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const-string v4, "getLayoutAlignment"

    invoke-static {p1, v4, v2}, Lo/onError;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/Layout$Alignment;

    .line 757
    iget v2, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0, v0, p1, v2, v1}, Lo/onError;->ICustomTabsCallback(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eq v1, v3, :cond_3

    .line 760
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    if-gt v3, v1, :cond_2

    .line 761
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    :cond_2
    return v2

    .line 766
    :cond_3
    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    return v2

    :cond_4
    return v4
.end method

.method private onNavigationEvent(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;
    .locals 9

    .line 820
    iget-object v0, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 821
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mSpacingMult"

    .line 820
    invoke-static {v0, v2, v1}, Lo/onError;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v6

    .line 822
    iget-object v0, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 823
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mSpacingAdd"

    .line 822
    invoke-static {v0, v2, v1}, Lo/onError;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v7

    .line 824
    iget-object v0, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "mIncludePad"

    invoke-static {v0, v2, v1}, Lo/onError;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 827
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v3, p0, Lo/onError;->ICustomTabsService:Landroid/text/TextPaint;

    move-object v1, v0

    move-object v2, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private static onNavigationEvent(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3

    .line 897
    :try_start_0
    sget-object v0, Lo/onError;->extraCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 899
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 901
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 902
    sget-object v1, Lo/onError;->extraCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 908
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to access TextView#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " member"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ACTVAutoSizeHelper"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private onNavigationEvent(Landroid/content/res/TypedArray;)V
    .locals 4

    .line 482
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 483
    new-array v1, v0, [I

    if-lez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, -0x1

    .line 487
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    :cond_0
    invoke-direct {p0, v1}, Lo/onError;->extraCallback([I)[I

    move-result-object p1

    iput-object p1, p0, Lo/onError;->onTransact:[I

    .line 490
    invoke-direct {p0}, Lo/onError;->asBinder()Z

    :cond_1
    return-void
.end method

.method private onPostMessage(Landroid/graphics/RectF;)I
    .locals 5

    .line 695
    iget-object v0, p0, Lo/onError;->onTransact:[I

    array-length v0, v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v2, v1, v0

    .line 705
    div-int/lit8 v2, v2, 0x2

    .line 706
    iget-object v3, p0, Lo/onError;->onTransact:[I

    aget v3, v3, v2

    invoke-direct {p0, v3, p1}, Lo/onError;->onMessageChannelReady(ILandroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    .line 715
    :cond_1
    iget-object p1, p0, Lo/onError;->onTransact:[I

    aget p1, p1, v2

    return p1

    .line 697
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No available text sizes to choose from."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onRelationshipValidationResult()V
    .locals 2

    const/4 v0, 0x0

    .line 638
    iput v0, p0, Lo/onError;->onMessageChannelReady:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 639
    iput v1, p0, Lo/onError;->onRelationshipValidationResult:F

    .line 640
    iput v1, p0, Lo/onError;->asBinder:F

    .line 641
    iput v1, p0, Lo/onError;->asInterface:F

    new-array v1, v0, [I

    .line 642
    iput-object v1, p0, Lo/onError;->onTransact:[I

    .line 643
    iput-boolean v0, p0, Lo/onError;->ICustomTabsCallback:Z

    return-void
.end method

.method private onTransact()Z
    .locals 7

    .line 571
    invoke-direct {p0}, Lo/onError;->warmup()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lo/onError;->onMessageChannelReady:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 575
    iget-boolean v0, p0, Lo/onError;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/onError;->onTransact:[I

    array-length v0, v0

    if-nez v0, :cond_2

    .line 577
    :cond_0
    iget v0, p0, Lo/onError;->asBinder:F

    iget v3, p0, Lo/onError;->onRelationshipValidationResult:F

    sub-float/2addr v0, v3

    iget v3, p0, Lo/onError;->asInterface:F

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    add-int/2addr v0, v2

    .line 579
    new-array v3, v0, [I

    :goto_0
    if-ge v1, v0, :cond_1

    .line 581
    iget v4, p0, Lo/onError;->onRelationshipValidationResult:F

    int-to-float v5, v1

    iget v6, p0, Lo/onError;->asInterface:F

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 584
    :cond_1
    invoke-direct {p0, v3}, Lo/onError;->extraCallback([I)[I

    move-result-object v0

    iput-object v0, p0, Lo/onError;->onTransact:[I

    .line 586
    :cond_2
    iput-boolean v2, p0, Lo/onError;->ICustomTabsCallback:Z

    goto :goto_1

    .line 588
    :cond_3
    iput-boolean v1, p0, Lo/onError;->ICustomTabsCallback:Z

    .line 591
    :goto_1
    iget-boolean v0, p0, Lo/onError;->ICustomTabsCallback:Z

    return v0
.end method

.method private warmup()Z
    .locals 1

    .line 930
    iget-object v0, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    instance-of v0, v0, Landroidx/appcompat/widget/AppCompatEditText;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method ICustomTabsCallback()I
    .locals 1

    .line 433
    iget v0, p0, Lo/onError;->asInterface:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method ICustomTabsCallback(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;
    .locals 2

    .line 732
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 733
    invoke-direct {p0, p1, p2, p3, p4}, Lo/onError;->extraCallback(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1

    .line 734
    :cond_0
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p4, v0, :cond_1

    .line 735
    invoke-direct {p0, p1, p2, p3}, Lo/onError;->ICustomTabsCallback(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1

    .line 737
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/onError;->onNavigationEvent(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1
.end method

.method ICustomTabsCallback(Landroid/util/AttributeSet;I)V
    .locals 10

    .line 167
    iget-object v0, p0, Lo/onError;->newSession:Landroid/content/Context;

    sget-object v1, Lo/extraCallback$asInterface;->AppCompatTextView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 169
    iget-object v3, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lo/extraCallback$asInterface;->AppCompatTextView:[I

    const/4 v9, 0x0

    move-object v6, p1

    move-object v7, v0

    move v8, p2

    invoke-static/range {v3 .. v9}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 172
    sget p1, Lo/extraCallback$asInterface;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 173
    sget p1, Lo/extraCallback$asInterface;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lo/onError;->onMessageChannelReady:I

    .line 176
    :cond_0
    sget p1, Lo/extraCallback$asInterface;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    if-eqz p1, :cond_1

    .line 177
    sget p1, Lo/extraCallback$asInterface;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    goto :goto_0

    :cond_1
    const/high16 p1, -0x40800000    # -1.0f

    .line 181
    :goto_0
    sget v1, Lo/extraCallback$asInterface;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    sget v1, Lo/extraCallback$asInterface;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    goto :goto_1

    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    .line 186
    :goto_1
    sget v3, Lo/extraCallback$asInterface;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 187
    sget v3, Lo/extraCallback$asInterface;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {v0, v3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    goto :goto_2

    :cond_3
    const/high16 v3, -0x40800000    # -1.0f

    .line 191
    :goto_2
    sget v4, Lo/extraCallback$asInterface;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 192
    sget v4, Lo/extraCallback$asInterface;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v4, :cond_4

    .line 195
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 196
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 197
    invoke-direct {p0, v4}, Lo/onError;->onNavigationEvent(Landroid/content/res/TypedArray;)V

    .line 198
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 203
    invoke-direct {p0}, Lo/onError;->warmup()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 204
    iget v0, p0, Lo/onError;->onMessageChannelReady:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    .line 208
    iget-boolean v0, p0, Lo/onError;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_8

    .line 209
    iget-object v0, p0, Lo/onError;->newSession:Landroid/content/Context;

    .line 210
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v2, 0x2

    cmpl-float v4, v1, p2

    if-nez v4, :cond_5

    const/high16 v1, 0x41400000    # 12.0f

    .line 213
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    :cond_5
    cmpl-float v4, v3, p2

    if-nez v4, :cond_6

    const/high16 v3, 0x42e00000    # 112.0f

    .line 220
    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    :cond_6
    cmpl-float p2, p1, p2

    if-nez p2, :cond_7

    const/high16 p1, 0x3f800000    # 1.0f

    .line 231
    :cond_7
    invoke-direct {p0, v1, v3, p1}, Lo/onError;->onMessageChannelReady(FFF)V

    .line 236
    :cond_8
    invoke-direct {p0}, Lo/onError;->onTransact()Z

    return-void

    .line 239
    :cond_9
    iput v2, p0, Lo/onError;->onMessageChannelReady:I

    :cond_a
    return-void
.end method

.method ICustomTabsCallback([II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 369
    invoke-direct {p0}, Lo/onError;->warmup()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 370
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 372
    new-array v2, v0, [I

    if-nez p2, :cond_0

    .line 375
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    goto :goto_1

    .line 377
    :cond_0
    iget-object v3, p0, Lo/onError;->newSession:Landroid/content/Context;

    .line 378
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    :goto_0
    if-ge v1, v0, :cond_1

    .line 381
    aget v4, p1, v1

    int-to-float v4, v4

    invoke-static {p2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Lo/onError;->extraCallback([I)[I

    move-result-object p2

    iput-object p2, p0, Lo/onError;->onTransact:[I

    .line 387
    invoke-direct {p0}, Lo/onError;->asBinder()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    .line 388
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "None of the preset sizes is valid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 392
    :cond_3
    iput-boolean v1, p0, Lo/onError;->ICustomTabsCallback$Stub:Z

    .line 395
    :goto_2
    invoke-direct {p0}, Lo/onError;->onTransact()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 396
    invoke-virtual {p0}, Lo/onError;->ICustomTabsCallback$Stub()V

    :cond_4
    return-void
.end method

.method ICustomTabsCallback$Stub()V
    .locals 4

    .line 601
    invoke-virtual {p0}, Lo/onError;->asInterface()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 605
    :cond_0
    iget-boolean v0, p0, Lo/onError;->ICustomTabsCallback:Z

    if-eqz v0, :cond_6

    .line 606
    iget-object v0, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 610
    :cond_1
    iget-object v0, p0, Lo/onError;->getInterfaceDescriptor:Lo/onError$onMessageChannelReady;

    iget-object v1, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lo/onError$onMessageChannelReady;->onPostMessage(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x100000

    goto :goto_0

    .line 614
    :cond_2
    iget-object v0, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    .line 613
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    .line 614
    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 615
    :goto_0
    iget-object v1, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    .line 616
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v0, :cond_5

    if-gtz v1, :cond_3

    goto :goto_1

    .line 622
    :cond_3
    sget-object v2, Lo/onError;->onNavigationEvent:Landroid/graphics/RectF;

    monitor-enter v2

    .line 623
    :try_start_0
    sget-object v3, Lo/onError;->onNavigationEvent:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 624
    sget-object v3, Lo/onError;->onNavigationEvent:Landroid/graphics/RectF;

    int-to-float v0, v0

    iput v0, v3, Landroid/graphics/RectF;->right:F

    .line 625
    sget-object v0, Lo/onError;->onNavigationEvent:Landroid/graphics/RectF;

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 626
    sget-object v0, Lo/onError;->onNavigationEvent:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lo/onError;->onPostMessage(Landroid/graphics/RectF;)I

    move-result v0

    int-to-float v0, v0

    .line 627
    iget-object v1, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 628
    invoke-virtual {p0, v1, v0}, Lo/onError;->onNavigationEvent(IF)V

    .line 630
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const/4 v0, 0x1

    .line 634
    iput-boolean v0, p0, Lo/onError;->ICustomTabsCallback:Z

    return-void
.end method

.method asInterface()Z
    .locals 1

    .line 921
    invoke-direct {p0}, Lo/onError;->warmup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/onError;->onMessageChannelReady:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method extraCallback()I
    .locals 1

    .line 419
    iget v0, p0, Lo/onError;->onMessageChannelReady:I

    return v0
.end method

.method extraCallback(I)V
    .locals 3

    .line 259
    invoke-direct {p0}, Lo/onError;->warmup()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 265
    iget-object p1, p0, Lo/onError;->newSession:Landroid/content/Context;

    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x41400000    # 12.0f

    const/4 v1, 0x2

    .line 267
    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v2, 0x42e00000    # 112.0f

    .line 271
    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 276
    invoke-direct {p0, v0, p1, v1}, Lo/onError;->onMessageChannelReady(FFF)V

    .line 280
    invoke-direct {p0}, Lo/onError;->onTransact()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 281
    invoke-virtual {p0}, Lo/onError;->ICustomTabsCallback$Stub()V

    return-void

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unknown auto-size text type: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_1
    invoke-direct {p0}, Lo/onError;->onRelationshipValidationResult()V

    :cond_2
    return-void
.end method

.method onMessageChannelReady()I
    .locals 1

    .line 449
    iget v0, p0, Lo/onError;->onRelationshipValidationResult:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method onMessageChannelReady(I)V
    .locals 2

    .line 720
    iget-object v0, p0, Lo/onError;->ICustomTabsService:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    .line 721
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lo/onError;->ICustomTabsService:Landroid/text/TextPaint;

    goto :goto_0

    .line 723
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 725
    :goto_0
    iget-object v0, p0, Lo/onError;->ICustomTabsService:Landroid/text/TextPaint;

    iget-object v1, p0, Lo/onError;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 726
    iget-object v0, p0, Lo/onError;->ICustomTabsService:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method onNavigationEvent(IF)V
    .locals 1

    .line 649
    iget-object v0, p0, Lo/onError;->newSession:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 650
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    .line 651
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 653
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-direct {p0, p1}, Lo/onError;->ICustomTabsCallback(F)V

    return-void
.end method

.method onNavigationEvent()[I
    .locals 1

    .line 478
    iget-object v0, p0, Lo/onError;->onTransact:[I

    return-object v0
.end method

.method onPostMessage()I
    .locals 1

    .line 465
    iget v0, p0, Lo/onError;->asBinder:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method onPostMessage(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 326
    invoke-direct {p0}, Lo/onError;->warmup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lo/onError;->newSession:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    .line 328
    invoke-static {p4, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    int-to-float p2, p2

    .line 330
    invoke-static {p4, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    int-to-float p3, p3

    .line 332
    invoke-static {p4, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    .line 335
    invoke-direct {p0, p1, p2, p3}, Lo/onError;->onMessageChannelReady(FFF)V

    .line 338
    invoke-direct {p0}, Lo/onError;->onTransact()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 339
    invoke-virtual {p0}, Lo/onError;->ICustomTabsCallback$Stub()V

    :cond_0
    return-void
.end method
