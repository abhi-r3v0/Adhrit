.class public abstract Lo/measureChildBeforeLayout;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/measureChildBeforeLayout<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field ICustomTabsCallback:F

.field ICustomTabsCallback$Stub:Z

.field ICustomTabsCallback$Stub$Proxy:Landroid/content/res/Resources$Theme;

.field ICustomTabsService:I

.field private ICustomTabsService$Stub:Z

.field private ICustomTabsService$Stub$Proxy:I

.field private IPostMessageService:Z

.field private IPostMessageService$Stub:I

.field public asBinder:Z

.field asInterface:Landroid/graphics/drawable/Drawable;

.field private cancelAll:Z

.field extraCallback:I

.field private extraCommand:I

.field getInterfaceDescriptor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/AppCompatRadioButton<",
            "*>;>;"
        }
    .end annotation
.end field

.field mayLaunchUrl:Z

.field newSession:Lo/applyFrameworkTintUsingColorFilter;

.field onMessageChannelReady:Landroid/graphics/drawable/Drawable;

.field onNavigationEvent:Lo/getFirstBaselineToTopHeight;

.field onPostMessage:Landroid/graphics/drawable/Drawable;

.field onRelationshipValidationResult:I

.field onTransact:Lo/AppCompatImageHelper;

.field postMessage:Z

.field requestPostMessageChannel:Z

.field updateVisuals:Z

.field private validateRelationship:Lo/getTintList;

.field warmup:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 73
    iput v0, p0, Lo/measureChildBeforeLayout;->ICustomTabsCallback:F

    .line 74
    sget-object v0, Lo/getFirstBaselineToTopHeight;->onMessageChannelReady:Lo/getFirstBaselineToTopHeight;

    iput-object v0, p0, Lo/measureChildBeforeLayout;->onNavigationEvent:Lo/getFirstBaselineToTopHeight;

    .line 75
    sget-object v0, Lo/getTintList;->extraCallback:Lo/getTintList;

    iput-object v0, p0, Lo/measureChildBeforeLayout;->validateRelationship:Lo/getTintList;

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lo/measureChildBeforeLayout;->asBinder:Z

    const/4 v1, -0x1

    .line 81
    iput v1, p0, Lo/measureChildBeforeLayout;->IPostMessageService$Stub:I

    .line 82
    iput v1, p0, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub$Proxy:I

    .line 83
    invoke-static {}, Lo/setListSelector;->ICustomTabsCallback()Lo/setListSelector;

    move-result-object v1

    iput-object v1, p0, Lo/measureChildBeforeLayout;->onTransact:Lo/AppCompatImageHelper;

    .line 85
    iput-boolean v0, p0, Lo/measureChildBeforeLayout;->IPostMessageService:Z

    .line 88
    new-instance v1, Lo/applyFrameworkTintUsingColorFilter;

    invoke-direct {v1}, Lo/applyFrameworkTintUsingColorFilter;-><init>()V

    iput-object v1, p0, Lo/measureChildBeforeLayout;->newSession:Lo/applyFrameworkTintUsingColorFilter;

    .line 90
    new-instance v1, Lo/setDropDownAlwaysVisible;

    invoke-direct {v1}, Lo/setDropDownAlwaysVisible;-><init>()V

    iput-object v1, p0, Lo/measureChildBeforeLayout;->getInterfaceDescriptor:Ljava/util/Map;

    .line 93
    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lo/measureChildBeforeLayout;->warmup:Ljava/lang/Class;

    .line 99
    iput-boolean v0, p0, Lo/measureChildBeforeLayout;->postMessage:Z

    return-void
.end method

.method private onMessageChannelReady(Lo/AppCompatRadioButton;Z)Lo/measureChildBeforeLayout;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AppCompatRadioButton<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    move-object v0, p0

    .line 965
    :goto_0
    iget-boolean v1, v0, Lo/measureChildBeforeLayout;->cancelAll:Z

    if-eqz v1, :cond_0

    .line 966
    invoke-virtual {v0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v0

    goto :goto_0

    .line 969
    :cond_0
    new-instance v1, Lo/positionSelectorLikeTouchCompat;

    invoke-direct {v1, p1, p2}, Lo/positionSelectorLikeTouchCompat;-><init>(Lo/AppCompatRadioButton;Z)V

    .line 971
    const-class v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, p1, p2}, Lo/measureChildBeforeLayout;->onPostMessage(Ljava/lang/Class;Lo/AppCompatRadioButton;Z)Lo/measureChildBeforeLayout;

    .line 972
    const-class v2, Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v2, v1, p2}, Lo/measureChildBeforeLayout;->onPostMessage(Ljava/lang/Class;Lo/AppCompatRadioButton;Z)Lo/measureChildBeforeLayout;

    .line 977
    const-class v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2, v1, p2}, Lo/measureChildBeforeLayout;->onPostMessage(Ljava/lang/Class;Lo/AppCompatRadioButton;Z)Lo/measureChildBeforeLayout;

    .line 978
    const-class v1, Lo/toGlobalMotionEvent;

    new-instance v2, Lo/getDividerDrawable;

    invoke-direct {v2, p1}, Lo/getDividerDrawable;-><init>(Lo/AppCompatRadioButton;)V

    invoke-direct {v0, v1, v2, p2}, Lo/measureChildBeforeLayout;->onPostMessage(Ljava/lang/Class;Lo/AppCompatRadioButton;Z)Lo/measureChildBeforeLayout;

    .line 23287
    iget-boolean p1, v0, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub:Z

    if-nez p1, :cond_1

    return-object v0

    .line 23288
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You cannot modify locked T, consider clone()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onPostMessage(Ljava/lang/Class;Lo/AppCompatRadioButton;Z)Lo/measureChildBeforeLayout;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lo/AppCompatRadioButton<",
            "TY;>;Z)TT;"
        }
    .end annotation

    move-object v0, p0

    .line 1011
    :goto_0
    iget-boolean v1, v0, Lo/measureChildBeforeLayout;->cancelAll:Z

    if-eqz v1, :cond_0

    .line 1012
    invoke-virtual {v0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    .line 1017
    iget-object v1, v0, Lo/measureChildBeforeLayout;->getInterfaceDescriptor:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    iget p1, v0, Lo/measureChildBeforeLayout;->extraCommand:I

    or-int/lit16 p1, p1, 0x800

    iput p1, v0, Lo/measureChildBeforeLayout;->extraCommand:I

    const/4 p2, 0x1

    .line 1019
    iput-boolean p2, v0, Lo/measureChildBeforeLayout;->IPostMessageService:Z

    const/high16 v1, 0x10000

    or-int/2addr p1, v1

    .line 1020
    iput p1, v0, Lo/measureChildBeforeLayout;->extraCommand:I

    const/4 v1, 0x0

    .line 1023
    iput-boolean v1, v0, Lo/measureChildBeforeLayout;->postMessage:Z

    if-eqz p3, :cond_1

    const/high16 p3, 0x20000

    or-int/2addr p1, p3

    .line 1025
    iput p1, v0, Lo/measureChildBeforeLayout;->extraCommand:I

    .line 1026
    iput-boolean p2, v0, Lo/measureChildBeforeLayout;->ICustomTabsCallback$Stub:Z

    .line 25287
    :cond_1
    iget-boolean p1, v0, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub:Z

    if-nez p1, :cond_2

    return-object v0

    .line 25288
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You cannot modify locked T, consider clone()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25029
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Argument must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public ICustomTabsCallback()Lo/measureChildBeforeLayout;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 532
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/measureChildBeforeLayout;

    .line 533
    new-instance v1, Lo/applyFrameworkTintUsingColorFilter;

    invoke-direct {v1}, Lo/applyFrameworkTintUsingColorFilter;-><init>()V

    iput-object v1, v0, Lo/measureChildBeforeLayout;->newSession:Lo/applyFrameworkTintUsingColorFilter;

    .line 534
    iget-object v2, p0, Lo/measureChildBeforeLayout;->newSession:Lo/applyFrameworkTintUsingColorFilter;

    .line 10015
    iget-object v1, v1, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    iget-object v2, v2, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v1, v2}, Lo/fromMediaItemList;->onPostMessage(Lo/fromMediaItemList;)V

    .line 535
    new-instance v1, Lo/setDropDownAlwaysVisible;

    invoke-direct {v1}, Lo/setDropDownAlwaysVisible;-><init>()V

    iput-object v1, v0, Lo/measureChildBeforeLayout;->getInterfaceDescriptor:Ljava/util/Map;

    .line 536
    iget-object v2, p0, Lo/measureChildBeforeLayout;->getInterfaceDescriptor:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 537
    iput-boolean v1, v0, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub:Z

    .line 538
    iput-boolean v1, v0, Lo/measureChildBeforeLayout;->cancelAll:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 541
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public ICustomTabsCallback(II)Lo/measureChildBeforeLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 462
    iget-boolean v0, p0, Lo/measureChildBeforeLayout;->cancelAll:Z

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/measureChildBeforeLayout;->ICustomTabsCallback(II)Lo/measureChildBeforeLayout;

    move-result-object p1

    return-object p1

    .line 466
    :cond_0
    iput p1, p0, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub$Proxy:I

    .line 467
    iput p2, p0, Lo/measureChildBeforeLayout;->IPostMessageService$Stub:I

    .line 468
    iget p1, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    .line 8287
    iget-boolean p1, p0, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub:Z

    if-nez p1, :cond_1

    return-object p0

    .line 8288
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You cannot modify locked T, consider clone()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ICustomTabsCallback(Ljava/lang/Class;)Lo/measureChildBeforeLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 561
    iget-boolean v0, p0, Lo/measureChildBeforeLayout;->cancelAll:Z

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {p0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/measureChildBeforeLayout;->ICustomTabsCallback(Ljava/lang/Class;)Lo/measureChildBeforeLayout;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 565
    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lo/measureChildBeforeLayout;->warmup:Ljava/lang/Class;

    .line 566
    iget p1, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    .line 13287
    iget-boolean p1, p0, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub:Z

    if-nez p1, :cond_1

    return-object p0

    .line 13288
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot modify locked T, consider clone()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13029
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Argument must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ICustomTabsCallback(Lo/AppCompatImageHelper;)Lo/measureChildBeforeLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AppCompatImageHelper;",
            ")TT;"
        }
    .end annotation

    .line 501
    iget-boolean v0, p0, Lo/measureChildBeforeLayout;->cancelAll:Z

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/measureChildBeforeLayout;->ICustomTabsCallback(Lo/AppCompatImageHelper;)Lo/measureChildBeforeLayout;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 505
    check-cast p1, Lo/AppCompatImageHelper;

    iput-object p1, p0, Lo/measureChildBeforeLayout;->onTransact:Lo/AppCompatImageHelper;

    .line 506
    iget p1, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    .line 9287
    iget-boolean p1, p0, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub:Z

    if-nez p1, :cond_1

    return-object p0

    .line 9288
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot modify locked T, consider clone()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9029
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Argument must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ICustomTabsCallback(Lo/AppCompatRadioButton;)Lo/measureChildBeforeLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AppCompatRadioButton<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 893
    invoke-direct {p0, p1, v0}, Lo/measureChildBeforeLayout;->onMessageChannelReady(Lo/AppCompatRadioButton;Z)Lo/measureChildBeforeLayout;

    move-result-object p1

    return-object p1
.end method

.method public ICustomTabsCallback(Lo/getFirstBaselineToTopHeight;)Lo/measureChildBeforeLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getFirstBaselineToTopHeight;",
            ")TT;"
        }
    .end annotation

    .line 213
    iget-boolean v0, p0, Lo/measureChildBeforeLayout;->cancelAll:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/measureChildBeforeLayout;->ICustomTabsCallback(Lo/getFirstBaselineToTopHeight;)Lo/measureChildBeforeLayout;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 216
    check-cast p1, Lo/getFirstBaselineToTopHeight;

    iput-object p1, p0, Lo/measureChildBeforeLayout;->onNavigationEvent:Lo/getFirstBaselineToTopHeight;

    .line 217
    iget p1, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    .line 3287
    iget-boolean p1, p0, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub:Z

    if-nez p1, :cond_1

    return-object p0

    .line 3288
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot modify locked T, consider clone()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3029
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Argument must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ICustomTabsCallback$Stub()Lo/measureChildBeforeLayout;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1276
    iget-boolean v0, p0, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/measureChildBeforeLayout;->cancelAll:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1277
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1280
    iput-boolean v0, p0, Lo/measureChildBeforeLayout;->cancelAll:Z

    .line 1281
    invoke-virtual {p0}, Lo/measureChildBeforeLayout;->asBinder()Lo/measureChildBeforeLayout;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Lo/getTintList;
    .locals 1

    .line 1384
    iget-object v0, p0, Lo/measureChildBeforeLayout;->validateRelationship:Lo/getTintList;

    return-object v0
.end method

.method public final ICustomTabsService()I
    .locals 1

    .line 1396
    iget v0, p0, Lo/measureChildBeforeLayout;->IPostMessageService$Stub:I

    return v0
.end method

.method public asBinder()Lo/measureChildBeforeLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1261
    iput-boolean v0, p0, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub:Z

    return-object p0
.end method

.method public asInterface()Lo/measureChildBeforeLayout;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 738
    sget-object v0, Lo/drawSelectorCompat;->extraCallback:Lo/drawSelectorCompat;

    new-instance v1, Lo/positionSelectorCompat;

    invoke-direct {v1}, Lo/positionSelectorCompat;-><init>()V

    .line 18825
    iget-boolean v2, p0, Lo/measureChildBeforeLayout;->cancelAll:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 18826
    invoke-virtual {p0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v2

    .line 19825
    :goto_0
    iget-boolean v4, v2, Lo/measureChildBeforeLayout;->cancelAll:Z

    if-eqz v4, :cond_0

    .line 19826
    invoke-virtual {v2}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v2

    goto :goto_0

    .line 19829
    :cond_0
    invoke-virtual {v2, v0}, Lo/measureChildBeforeLayout;->onPostMessage(Lo/drawSelectorCompat;)Lo/measureChildBeforeLayout;

    .line 19830
    invoke-direct {v2, v1, v3}, Lo/measureChildBeforeLayout;->onMessageChannelReady(Lo/AppCompatRadioButton;Z)Lo/measureChildBeforeLayout;

    move-result-object v0

    goto :goto_1

    .line 18829
    :cond_1
    invoke-virtual {p0, v0}, Lo/measureChildBeforeLayout;->onPostMessage(Lo/drawSelectorCompat;)Lo/measureChildBeforeLayout;

    .line 18830
    invoke-direct {p0, v1, v3}, Lo/measureChildBeforeLayout;->onMessageChannelReady(Lo/AppCompatRadioButton;Z)Lo/measureChildBeforeLayout;

    move-result-object v0

    :goto_1
    const/4 v1, 0x1

    .line 17872
    iput-boolean v1, v0, Lo/measureChildBeforeLayout;->postMessage:Z

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1200
    instance-of v0, p1, Lo/measureChildBeforeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1201
    check-cast p1, Lo/measureChildBeforeLayout;

    .line 1202
    iget v0, p1, Lo/measureChildBeforeLayout;->ICustomTabsCallback:F

    iget v2, p0, Lo/measureChildBeforeLayout;->ICustomTabsCallback:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lo/measureChildBeforeLayout;->extraCallback:I

    iget v2, p1, Lo/measureChildBeforeLayout;->extraCallback:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lo/measureChildBeforeLayout;->onPostMessage:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lo/measureChildBeforeLayout;->onPostMessage:Landroid/graphics/drawable/Drawable;

    .line 1204
    invoke-static {v0, v2}, Lo/getHorizontalOffset;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/measureChildBeforeLayout;->onRelationshipValidationResult:I

    iget v2, p1, Lo/measureChildBeforeLayout;->onRelationshipValidationResult:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lo/measureChildBeforeLayout;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lo/measureChildBeforeLayout;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    .line 1206
    invoke-static {v0, v2}, Lo/getHorizontalOffset;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/measureChildBeforeLayout;->ICustomTabsService:I

    iget v2, p1, Lo/measureChildBeforeLayout;->ICustomTabsService:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lo/measureChildBeforeLayout;->asInterface:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lo/measureChildBeforeLayout;->asInterface:Landroid/graphics/drawable/Drawable;

    .line 1208
    invoke-static {v0, v2}, Lo/getHorizontalOffset;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/measureChildBeforeLayout;->asBinder:Z

    iget-boolean v2, p1, Lo/measureChildBeforeLayout;->asBinder:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lo/measureChildBeforeLayout;->IPostMessageService$Stub:I

    iget v2, p1, Lo/measureChildBeforeLayout;->IPostMessageService$Stub:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub$Proxy:I

    iget v2, p1, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub$Proxy:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lo/measureChildBeforeLayout;->ICustomTabsCallback$Stub:Z

    iget-boolean v2, p1, Lo/measureChildBeforeLayout;->ICustomTabsCallback$Stub:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lo/measureChildBeforeLayout;->IPostMessageService:Z

    iget-boolean v2, p1, Lo/measureChildBeforeLayout;->IPostMessageService:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lo/measureChildBeforeLayout;->updateVisuals:Z

    iget-boolean v2, p1, Lo/measureChildBeforeLayout;->updateVisuals:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lo/measureChildBeforeLayout;->mayLaunchUrl:Z

    iget-boolean v2, p1, Lo/measureChildBeforeLayout;->mayLaunchUrl:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lo/measureChildBeforeLayout;->onNavigationEvent:Lo/getFirstBaselineToTopHeight;

    iget-object v2, p1, Lo/measureChildBeforeLayout;->onNavigationEvent:Lo/getFirstBaselineToTopHeight;

    .line 1216
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/measureChildBeforeLayout;->validateRelationship:Lo/getTintList;

    iget-object v2, p1, Lo/measureChildBeforeLayout;->validateRelationship:Lo/getTintList;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lo/measureChildBeforeLayout;->newSession:Lo/applyFrameworkTintUsingColorFilter;

    iget-object v2, p1, Lo/measureChildBeforeLayout;->newSession:Lo/applyFrameworkTintUsingColorFilter;

    .line 1218
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/measureChildBeforeLayout;->getInterfaceDescriptor:Ljava/util/Map;

    iget-object v2, p1, Lo/measureChildBeforeLayout;->getInterfaceDescriptor:Ljava/util/Map;

    .line 1219
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/measureChildBeforeLayout;->warmup:Ljava/lang/Class;

    iget-object v2, p1, Lo/measureChildBeforeLayout;->warmup:Ljava/lang/Class;

    .line 1220
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/measureChildBeforeLayout;->onTransact:Lo/AppCompatImageHelper;

    iget-object v2, p1, Lo/measureChildBeforeLayout;->onTransact:Lo/AppCompatImageHelper;

    .line 1221
    invoke-static {v0, v2}, Lo/getHorizontalOffset;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/measureChildBeforeLayout;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lo/measureChildBeforeLayout;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/Resources$Theme;

    .line 1222
    invoke-static {v0, p1}, Lo/getHorizontalOffset;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public extraCallback(Lo/getTintList;)Lo/measureChildBeforeLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getTintList;",
            ")TT;"
        }
    .end annotation

    .line 231
    iget-boolean v0, p0, Lo/measureChildBeforeLayout;->cancelAll:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/measureChildBeforeLayout;->extraCallback(Lo/getTintList;)Lo/measureChildBeforeLayout;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 235
    check-cast p1, Lo/getTintList;

    iput-object p1, p0, Lo/measureChildBeforeLayout;->validateRelationship:Lo/getTintList;

    .line 236
    iget p1, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    .line 4287
    iget-boolean p1, p0, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub:Z

    if-nez p1, :cond_1

    return-object p0

    .line 4288
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot modify locked T, consider clone()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4029
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Argument must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public extraCallback(Z)Lo/measureChildBeforeLayout;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 440
    iget-boolean v0, p0, Lo/measureChildBeforeLayout;->cancelAll:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo/measureChildBeforeLayout;->extraCallback(Z)Lo/measureChildBeforeLayout;

    move-result-object p1

    return-object p1

    :cond_0
    xor-int/2addr p1, v1

    .line 444
    iput-boolean p1, p0, Lo/measureChildBeforeLayout;->asBinder:Z

    .line 445
    iget p1, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    .line 7287
    iget-boolean p1, p0, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub:Z

    if-nez p1, :cond_1

    return-object p0

    .line 7288
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot modify locked T, consider clone()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final extraCallback()Z
    .locals 1

    .line 14408
    iget v0, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1229
    iget v0, p0, Lo/measureChildBeforeLayout;->ICustomTabsCallback:F

    invoke-static {v0}, Lo/getHorizontalOffset;->onPostMessage(F)I

    move-result v0

    .line 1230
    iget v1, p0, Lo/measureChildBeforeLayout;->extraCallback:I

    invoke-static {v1, v0}, Lo/getHorizontalOffset;->onPostMessage(II)I

    move-result v0

    .line 1231
    iget-object v1, p0, Lo/measureChildBeforeLayout;->onPostMessage:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lo/getHorizontalOffset;->onMessageChannelReady(Ljava/lang/Object;I)I

    move-result v0

    .line 1232
    iget v1, p0, Lo/measureChildBeforeLayout;->onRelationshipValidationResult:I

    invoke-static {v1, v0}, Lo/getHorizontalOffset;->onPostMessage(II)I

    move-result v0

    .line 1233
    iget-object v1, p0, Lo/measureChildBeforeLayout;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lo/getHorizontalOffset;->onMessageChannelReady(Ljava/lang/Object;I)I

    move-result v0

    .line 1234
    iget v1, p0, Lo/measureChildBeforeLayout;->ICustomTabsService:I

    invoke-static {v1, v0}, Lo/getHorizontalOffset;->onPostMessage(II)I

    move-result v0

    .line 1235
    iget-object v1, p0, Lo/measureChildBeforeLayout;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lo/getHorizontalOffset;->onMessageChannelReady(Ljava/lang/Object;I)I

    move-result v0

    .line 1236
    iget-boolean v1, p0, Lo/measureChildBeforeLayout;->asBinder:Z

    invoke-static {v1, v0}, Lo/getHorizontalOffset;->onNavigationEvent(ZI)I

    move-result v0

    .line 1237
    iget v1, p0, Lo/measureChildBeforeLayout;->IPostMessageService$Stub:I

    invoke-static {v1, v0}, Lo/getHorizontalOffset;->onPostMessage(II)I

    move-result v0

    .line 1238
    iget v1, p0, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub$Proxy:I

    invoke-static {v1, v0}, Lo/getHorizontalOffset;->onPostMessage(II)I

    move-result v0

    .line 1239
    iget-boolean v1, p0, Lo/measureChildBeforeLayout;->ICustomTabsCallback$Stub:Z

    invoke-static {v1, v0}, Lo/getHorizontalOffset;->onNavigationEvent(ZI)I

    move-result v0

    .line 1240
    iget-boolean v1, p0, Lo/measureChildBeforeLayout;->IPostMessageService:Z

    invoke-static {v1, v0}, Lo/getHorizontalOffset;->onNavigationEvent(ZI)I

    move-result v0

    .line 1241
    iget-boolean v1, p0, Lo/measureChildBeforeLayout;->updateVisuals:Z

    invoke-static {v1, v0}, Lo/getHorizontalOffset;->onNavigationEvent(ZI)I

    move-result v0

    .line 1242
    iget-boolean v1, p0, Lo/measureChildBeforeLayout;->mayLaunchUrl:Z

    invoke-static {v1, v0}, Lo/getHorizontalOffset;->onNavigationEvent(ZI)I

    move-result v0

    .line 1243
    iget-object v1, p0, Lo/measureChildBeforeLayout;->onNavigationEvent:Lo/getFirstBaselineToTopHeight;

    invoke-static {v1, v0}, Lo/getHorizontalOffset;->onMessageChannelReady(Ljava/lang/Object;I)I

    move-result v0

    .line 1244
    iget-object v1, p0, Lo/measureChildBeforeLayout;->validateRelationship:Lo/getTintList;

    invoke-static {v1, v0}, Lo/getHorizontalOffset;->onMessageChannelReady(Ljava/lang/Object;I)I

    move-result v0

    .line 1245
    iget-object v1, p0, Lo/measureChildBeforeLayout;->newSession:Lo/applyFrameworkTintUsingColorFilter;

    invoke-static {v1, v0}, Lo/getHorizontalOffset;->onMessageChannelReady(Ljava/lang/Object;I)I

    move-result v0

    .line 1246
    iget-object v1, p0, Lo/measureChildBeforeLayout;->getInterfaceDescriptor:Ljava/util/Map;

    invoke-static {v1, v0}, Lo/getHorizontalOffset;->onMessageChannelReady(Ljava/lang/Object;I)I

    move-result v0

    .line 1247
    iget-object v1, p0, Lo/measureChildBeforeLayout;->warmup:Ljava/lang/Class;

    invoke-static {v1, v0}, Lo/getHorizontalOffset;->onMessageChannelReady(Ljava/lang/Object;I)I

    move-result v0

    .line 1248
    iget-object v1, p0, Lo/measureChildBeforeLayout;->onTransact:Lo/AppCompatImageHelper;

    invoke-static {v1, v0}, Lo/getHorizontalOffset;->onMessageChannelReady(Ljava/lang/Object;I)I

    move-result v0

    .line 1249
    iget-object v1, p0, Lo/measureChildBeforeLayout;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lo/getHorizontalOffset;->onMessageChannelReady(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final newSession()I
    .locals 1

    .line 1388
    iget v0, p0, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub$Proxy:I

    return v0
.end method

.method public onMessageChannelReady()Lo/measureChildBeforeLayout;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 707
    sget-object v0, Lo/drawSelectorCompat;->onNavigationEvent:Lo/drawSelectorCompat;

    new-instance v1, Lo/setListSelectionHidden;

    invoke-direct {v1}, Lo/setListSelectionHidden;-><init>()V

    .line 16825
    iget-boolean v2, p0, Lo/measureChildBeforeLayout;->cancelAll:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 16826
    invoke-virtual {p0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v2

    .line 17825
    :goto_0
    iget-boolean v4, v2, Lo/measureChildBeforeLayout;->cancelAll:Z

    if-eqz v4, :cond_0

    .line 17826
    invoke-virtual {v2}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v2

    goto :goto_0

    .line 17829
    :cond_0
    invoke-virtual {v2, v0}, Lo/measureChildBeforeLayout;->onPostMessage(Lo/drawSelectorCompat;)Lo/measureChildBeforeLayout;

    .line 17830
    invoke-direct {v2, v1, v3}, Lo/measureChildBeforeLayout;->onMessageChannelReady(Lo/AppCompatRadioButton;Z)Lo/measureChildBeforeLayout;

    move-result-object v0

    return-object v0

    .line 16829
    :cond_1
    invoke-virtual {p0, v0}, Lo/measureChildBeforeLayout;->onPostMessage(Lo/drawSelectorCompat;)Lo/measureChildBeforeLayout;

    .line 16830
    invoke-direct {p0, v1, v3}, Lo/measureChildBeforeLayout;->onMessageChannelReady(Lo/AppCompatRadioButton;Z)Lo/measureChildBeforeLayout;

    move-result-object v0

    return-object v0
.end method

.method public onNavigationEvent(I)Lo/measureChildBeforeLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 277
    iget-boolean v0, p0, Lo/measureChildBeforeLayout;->cancelAll:Z

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/measureChildBeforeLayout;->onNavigationEvent(I)Lo/measureChildBeforeLayout;

    move-result-object p1

    return-object p1

    .line 281
    :cond_0
    iput p1, p0, Lo/measureChildBeforeLayout;->onRelationshipValidationResult:I

    .line 282
    iget p1, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    const/4 v0, 0x0

    .line 284
    iput-object v0, p0, Lo/measureChildBeforeLayout;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x41

    .line 285
    iput p1, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    .line 5287
    iget-boolean p1, p0, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub:Z

    if-nez p1, :cond_1

    return-object p0

    .line 5288
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot modify locked T, consider clone()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onNavigationEvent(Lo/setInternalImageTint;Ljava/lang/Object;)Lo/measureChildBeforeLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/setInternalImageTint<",
            "TY;>;TY;)TT;"
        }
    .end annotation

    .line 548
    iget-boolean v0, p0, Lo/measureChildBeforeLayout;->cancelAll:Z

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/measureChildBeforeLayout;->onNavigationEvent(Lo/setInternalImageTint;Ljava/lang/Object;)Lo/measureChildBeforeLayout;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 554
    iget-object v0, p0, Lo/measureChildBeforeLayout;->newSession:Lo/applyFrameworkTintUsingColorFilter;

    .line 12020
    iget-object v0, v0, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v0, p1, p2}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12287
    iget-boolean p1, p0, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub:Z

    if-nez p1, :cond_1

    return-object p0

    .line 12288
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You cannot modify locked T, consider clone()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11029
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10029
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 571
    iget-boolean v0, p0, Lo/measureChildBeforeLayout;->IPostMessageService:Z

    return v0
.end method

.method public onPostMessage(I)Lo/measureChildBeforeLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 385
    iget-boolean v0, p0, Lo/measureChildBeforeLayout;->cancelAll:Z

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/measureChildBeforeLayout;->onPostMessage(I)Lo/measureChildBeforeLayout;

    move-result-object p1

    return-object p1

    .line 388
    :cond_0
    iput p1, p0, Lo/measureChildBeforeLayout;->extraCallback:I

    .line 389
    iget p1, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    const/4 v0, 0x0

    .line 391
    iput-object v0, p0, Lo/measureChildBeforeLayout;->onPostMessage:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x11

    .line 392
    iput p1, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    .line 6287
    iget-boolean p1, p0, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub:Z

    if-nez p1, :cond_1

    return-object p0

    .line 6288
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot modify locked T, consider clone()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onPostMessage(Lo/drawSelectorCompat;)Lo/measureChildBeforeLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/drawSelectorCompat;",
            ")TT;"
        }
    .end annotation

    .line 676
    sget-object v0, Lo/drawSelectorCompat;->asBinder:Lo/setInternalImageTint;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, p1}, Lo/measureChildBeforeLayout;->onNavigationEvent(Lo/setInternalImageTint;Ljava/lang/Object;)Lo/measureChildBeforeLayout;

    move-result-object p1

    return-object p1

    .line 16029
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Argument must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onPostMessage(Lo/measureChildBeforeLayout;)Lo/measureChildBeforeLayout;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/measureChildBeforeLayout<",
            "*>;)TT;"
        }
    .end annotation

    .line 1103
    iget-boolean v0, p0, Lo/measureChildBeforeLayout;->cancelAll:Z

    if-eqz v0, :cond_0

    .line 1104
    invoke-virtual {p0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/measureChildBeforeLayout;->onPostMessage(Lo/measureChildBeforeLayout;)Lo/measureChildBeforeLayout;

    move-result-object p1

    return-object p1

    .line 1108
    :cond_0
    iget v0, p1, Lo/measureChildBeforeLayout;->extraCommand:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1109
    iget v0, p1, Lo/measureChildBeforeLayout;->ICustomTabsCallback:F

    iput v0, p0, Lo/measureChildBeforeLayout;->ICustomTabsCallback:F

    .line 1111
    :cond_2
    iget v0, p1, Lo/measureChildBeforeLayout;->extraCommand:I

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 1112
    iget-boolean v0, p1, Lo/measureChildBeforeLayout;->updateVisuals:Z

    iput-boolean v0, p0, Lo/measureChildBeforeLayout;->updateVisuals:Z

    .line 1114
    :cond_4
    iget v0, p1, Lo/measureChildBeforeLayout;->extraCommand:I

    const/high16 v3, 0x100000

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    .line 1115
    iget-boolean v0, p1, Lo/measureChildBeforeLayout;->requestPostMessageChannel:Z

    iput-boolean v0, p0, Lo/measureChildBeforeLayout;->requestPostMessageChannel:Z

    .line 1117
    :cond_6
    iget v0, p1, Lo/measureChildBeforeLayout;->extraCommand:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_8

    .line 1118
    iget-object v0, p1, Lo/measureChildBeforeLayout;->onNavigationEvent:Lo/getFirstBaselineToTopHeight;

    iput-object v0, p0, Lo/measureChildBeforeLayout;->onNavigationEvent:Lo/getFirstBaselineToTopHeight;

    .line 1120
    :cond_8
    iget v0, p1, Lo/measureChildBeforeLayout;->extraCommand:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_a

    .line 1121
    iget-object v0, p1, Lo/measureChildBeforeLayout;->validateRelationship:Lo/getTintList;

    iput-object v0, p0, Lo/measureChildBeforeLayout;->validateRelationship:Lo/getTintList;

    .line 1123
    :cond_a
    iget v0, p1, Lo/measureChildBeforeLayout;->extraCommand:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_c

    .line 1124
    iget-object v0, p1, Lo/measureChildBeforeLayout;->onPostMessage:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lo/measureChildBeforeLayout;->onPostMessage:Landroid/graphics/drawable/Drawable;

    .line 1125
    iput v2, p0, Lo/measureChildBeforeLayout;->extraCallback:I

    .line 1126
    iget v0, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    .line 1128
    :cond_c
    iget v0, p1, Lo/measureChildBeforeLayout;->extraCommand:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    :goto_6
    const/4 v3, 0x0

    if-eqz v0, :cond_e

    .line 1129
    iget v0, p1, Lo/measureChildBeforeLayout;->extraCallback:I

    iput v0, p0, Lo/measureChildBeforeLayout;->extraCallback:I

    .line 1130
    iput-object v3, p0, Lo/measureChildBeforeLayout;->onPostMessage:Landroid/graphics/drawable/Drawable;

    .line 1131
    iget v0, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    .line 1133
    :cond_e
    iget v0, p1, Lo/measureChildBeforeLayout;->extraCommand:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_7

    :cond_f
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_10

    .line 1134
    iget-object v0, p1, Lo/measureChildBeforeLayout;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lo/measureChildBeforeLayout;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    .line 1135
    iput v2, p0, Lo/measureChildBeforeLayout;->onRelationshipValidationResult:I

    .line 1136
    iget v0, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    .line 1138
    :cond_10
    iget v0, p1, Lo/measureChildBeforeLayout;->extraCommand:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_8

    :cond_11
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_12

    .line 1139
    iget v0, p1, Lo/measureChildBeforeLayout;->onRelationshipValidationResult:I

    iput v0, p0, Lo/measureChildBeforeLayout;->onRelationshipValidationResult:I

    .line 1140
    iput-object v3, p0, Lo/measureChildBeforeLayout;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    .line 1141
    iget v0, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    .line 1143
    :cond_12
    iget v0, p1, Lo/measureChildBeforeLayout;->extraCommand:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_9

    :cond_13
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_14

    .line 1144
    iget-boolean v0, p1, Lo/measureChildBeforeLayout;->asBinder:Z

    iput-boolean v0, p0, Lo/measureChildBeforeLayout;->asBinder:Z

    .line 1146
    :cond_14
    iget v0, p1, Lo/measureChildBeforeLayout;->extraCommand:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_a

    :cond_15
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_16

    .line 1147
    iget v0, p1, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub$Proxy:I

    iput v0, p0, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub$Proxy:I

    .line 1148
    iget v0, p1, Lo/measureChildBeforeLayout;->IPostMessageService$Stub:I

    iput v0, p0, Lo/measureChildBeforeLayout;->IPostMessageService$Stub:I

    .line 1150
    :cond_16
    iget v0, p1, Lo/measureChildBeforeLayout;->extraCommand:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_b

    :cond_17
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_18

    .line 1151
    iget-object v0, p1, Lo/measureChildBeforeLayout;->onTransact:Lo/AppCompatImageHelper;

    iput-object v0, p0, Lo/measureChildBeforeLayout;->onTransact:Lo/AppCompatImageHelper;

    .line 1153
    :cond_18
    iget v0, p1, Lo/measureChildBeforeLayout;->extraCommand:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_c

    :cond_19
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_1a

    .line 1154
    iget-object v0, p1, Lo/measureChildBeforeLayout;->warmup:Ljava/lang/Class;

    iput-object v0, p0, Lo/measureChildBeforeLayout;->warmup:Ljava/lang/Class;

    .line 1156
    :cond_1a
    iget v0, p1, Lo/measureChildBeforeLayout;->extraCommand:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_d

    :cond_1b
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_1c

    .line 1157
    iget-object v0, p1, Lo/measureChildBeforeLayout;->asInterface:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lo/measureChildBeforeLayout;->asInterface:Landroid/graphics/drawable/Drawable;

    .line 1158
    iput v2, p0, Lo/measureChildBeforeLayout;->ICustomTabsService:I

    .line 1159
    iget v0, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    .line 1161
    :cond_1c
    iget v0, p1, Lo/measureChildBeforeLayout;->extraCommand:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_e

    :cond_1d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_1e

    .line 1162
    iget v0, p1, Lo/measureChildBeforeLayout;->ICustomTabsService:I

    iput v0, p0, Lo/measureChildBeforeLayout;->ICustomTabsService:I

    .line 1163
    iput-object v3, p0, Lo/measureChildBeforeLayout;->asInterface:Landroid/graphics/drawable/Drawable;

    .line 1164
    iget v0, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    .line 1166
    :cond_1e
    iget v0, p1, Lo/measureChildBeforeLayout;->extraCommand:I

    const v3, 0x8000

    and-int/2addr v0, v3

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_f

    :cond_1f
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_20

    .line 1167
    iget-object v0, p1, Lo/measureChildBeforeLayout;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lo/measureChildBeforeLayout;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/Resources$Theme;

    .line 1169
    :cond_20
    iget v0, p1, Lo/measureChildBeforeLayout;->extraCommand:I

    const/high16 v3, 0x10000

    and-int/2addr v0, v3

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_10

    :cond_21
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_22

    .line 1170
    iget-boolean v0, p1, Lo/measureChildBeforeLayout;->IPostMessageService:Z

    iput-boolean v0, p0, Lo/measureChildBeforeLayout;->IPostMessageService:Z

    .line 1172
    :cond_22
    iget v0, p1, Lo/measureChildBeforeLayout;->extraCommand:I

    const/high16 v3, 0x20000

    and-int/2addr v0, v3

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_11

    :cond_23
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_24

    .line 1173
    iget-boolean v0, p1, Lo/measureChildBeforeLayout;->ICustomTabsCallback$Stub:Z

    iput-boolean v0, p0, Lo/measureChildBeforeLayout;->ICustomTabsCallback$Stub:Z

    .line 1175
    :cond_24
    iget v0, p1, Lo/measureChildBeforeLayout;->extraCommand:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_12

    :cond_25
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_26

    .line 1176
    iget-object v0, p0, Lo/measureChildBeforeLayout;->getInterfaceDescriptor:Ljava/util/Map;

    iget-object v3, p1, Lo/measureChildBeforeLayout;->getInterfaceDescriptor:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1177
    iget-boolean v0, p1, Lo/measureChildBeforeLayout;->postMessage:Z

    iput-boolean v0, p0, Lo/measureChildBeforeLayout;->postMessage:Z

    .line 1179
    :cond_26
    iget v0, p1, Lo/measureChildBeforeLayout;->extraCommand:I

    const/high16 v3, 0x80000

    and-int/2addr v0, v3

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_13

    :cond_27
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_28

    .line 1180
    iget-boolean v0, p1, Lo/measureChildBeforeLayout;->mayLaunchUrl:Z

    iput-boolean v0, p0, Lo/measureChildBeforeLayout;->mayLaunchUrl:Z

    .line 1184
    :cond_28
    iget-boolean v0, p0, Lo/measureChildBeforeLayout;->IPostMessageService:Z

    if-nez v0, :cond_29

    .line 1185
    iget-object v0, p0, Lo/measureChildBeforeLayout;->getInterfaceDescriptor:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1186
    iget v0, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    .line 1187
    iput-boolean v2, p0, Lo/measureChildBeforeLayout;->ICustomTabsCallback$Stub:Z

    const v2, -0x20001

    and-int/2addr v0, v2

    .line 1188
    iput v0, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    .line 1189
    iput-boolean v1, p0, Lo/measureChildBeforeLayout;->postMessage:Z

    .line 1192
    :cond_29
    iget v0, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    iget v1, p1, Lo/measureChildBeforeLayout;->extraCommand:I

    or-int/2addr v0, v1

    iput v0, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    .line 1193
    iget-object v0, p0, Lo/measureChildBeforeLayout;->newSession:Lo/applyFrameworkTintUsingColorFilter;

    iget-object p1, p1, Lo/measureChildBeforeLayout;->newSession:Lo/applyFrameworkTintUsingColorFilter;

    .line 46015
    iget-object v0, v0, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    iget-object p1, p1, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v0, p1}, Lo/fromMediaItemList;->onPostMessage(Lo/fromMediaItemList;)V

    .line 46287
    iget-boolean p1, p0, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub:Z

    if-nez p1, :cond_2a

    return-object p0

    .line 46288
    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot modify locked T, consider clone()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onPostMessage(Z)Lo/measureChildBeforeLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 171
    iget-boolean v0, p0, Lo/measureChildBeforeLayout;->cancelAll:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/measureChildBeforeLayout;->onPostMessage(Z)Lo/measureChildBeforeLayout;

    move-result-object p1

    return-object p1

    .line 175
    :cond_0
    iput-boolean p1, p0, Lo/measureChildBeforeLayout;->requestPostMessageChannel:Z

    .line 176
    iget p1, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lo/measureChildBeforeLayout;->extraCommand:I

    .line 2287
    iget-boolean p1, p0, Lo/measureChildBeforeLayout;->ICustomTabsService$Stub:Z

    if-nez p1, :cond_1

    return-object p0

    .line 2288
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot modify locked T, consider clone()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onRelationshipValidationResult()Lo/measureChildBeforeLayout;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 770
    sget-object v0, Lo/drawSelectorCompat;->ICustomTabsCallback:Lo/drawSelectorCompat;

    new-instance v1, Lo/onForwardedEvent;

    invoke-direct {v1}, Lo/onForwardedEvent;-><init>()V

    .line 20825
    iget-boolean v2, p0, Lo/measureChildBeforeLayout;->cancelAll:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 20826
    invoke-virtual {p0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v2

    .line 21825
    :goto_0
    iget-boolean v4, v2, Lo/measureChildBeforeLayout;->cancelAll:Z

    if-eqz v4, :cond_0

    .line 21826
    invoke-virtual {v2}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v2

    goto :goto_0

    .line 21829
    :cond_0
    invoke-virtual {v2, v0}, Lo/measureChildBeforeLayout;->onPostMessage(Lo/drawSelectorCompat;)Lo/measureChildBeforeLayout;

    .line 21830
    invoke-direct {v2, v1, v3}, Lo/measureChildBeforeLayout;->onMessageChannelReady(Lo/AppCompatRadioButton;Z)Lo/measureChildBeforeLayout;

    move-result-object v0

    goto :goto_1

    .line 20829
    :cond_1
    invoke-virtual {p0, v0}, Lo/measureChildBeforeLayout;->onPostMessage(Lo/drawSelectorCompat;)Lo/measureChildBeforeLayout;

    .line 20830
    invoke-direct {p0, v1, v3}, Lo/measureChildBeforeLayout;->onMessageChannelReady(Lo/AppCompatRadioButton;Z)Lo/measureChildBeforeLayout;

    move-result-object v0

    :goto_1
    const/4 v1, 0x1

    .line 19872
    iput-boolean v1, v0, Lo/measureChildBeforeLayout;->postMessage:Z

    return-object v0
.end method

.method public onTransact()Lo/measureChildBeforeLayout;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 815
    sget-object v0, Lo/drawSelectorCompat;->ICustomTabsCallback:Lo/drawSelectorCompat;

    new-instance v1, Lo/clickPressedItem;

    invoke-direct {v1}, Lo/clickPressedItem;-><init>()V

    .line 21841
    iget-boolean v2, p0, Lo/measureChildBeforeLayout;->cancelAll:Z

    if-eqz v2, :cond_1

    .line 21842
    invoke-virtual {p0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v2

    .line 22841
    :goto_0
    iget-boolean v3, v2, Lo/measureChildBeforeLayout;->cancelAll:Z

    if-eqz v3, :cond_0

    .line 22842
    invoke-virtual {v2}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v2

    goto :goto_0

    .line 22845
    :cond_0
    invoke-virtual {v2, v0}, Lo/measureChildBeforeLayout;->onPostMessage(Lo/drawSelectorCompat;)Lo/measureChildBeforeLayout;

    .line 22846
    invoke-virtual {v2, v1}, Lo/measureChildBeforeLayout;->ICustomTabsCallback(Lo/AppCompatRadioButton;)Lo/measureChildBeforeLayout;

    move-result-object v0

    return-object v0

    .line 21845
    :cond_1
    invoke-virtual {p0, v0}, Lo/measureChildBeforeLayout;->onPostMessage(Lo/drawSelectorCompat;)Lo/measureChildBeforeLayout;

    .line 21846
    invoke-virtual {p0, v1}, Lo/measureChildBeforeLayout;->ICustomTabsCallback(Lo/AppCompatRadioButton;)Lo/measureChildBeforeLayout;

    move-result-object v0

    return-object v0
.end method
