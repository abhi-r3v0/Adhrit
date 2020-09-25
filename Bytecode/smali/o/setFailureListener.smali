.class public final Lo/setFailureListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setFailureListener$warmup;,
        Lo/setFailureListener$newSession;,
        Lo/setFailureListener$ICustomTabsCallback$Stub;,
        Lo/setFailureListener$getInterfaceDescriptor;,
        Lo/setFailureListener$onMessageChannelReady;,
        Lo/setFailureListener$onNavigationEvent;,
        Lo/setFailureListener$onPostMessage;,
        Lo/setFailureListener$asInterface;,
        Lo/setFailureListener$asBinder;,
        Lo/setFailureListener$onTransact;,
        Lo/setFailureListener$onRelationshipValidationResult;,
        Lo/setFailureListener$ICustomTabsCallback$Stub$Proxy;,
        Lo/setFailureListener$ICustomTabsCallback;,
        Lo/setFailureListener$extraCallback;
    }
.end annotation


# instance fields
.field private final arg$1:Lo/setCores;

.field private final arg$2:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/setCores;Ljava/util/List;)V
    .locals 0

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setFailureListener;->arg$1:Lo/setCores;

    iput-object p2, p0, Lo/setFailureListener;->arg$2:Ljava/util/List;

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/graphics/drawable/Drawable;)Lo/fromAssets;
    .locals 4

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 129
    :cond_0
    instance-of v1, p0, Lo/fromAssets;

    if-eqz v1, :cond_1

    .line 130
    check-cast p0, Lo/fromAssets;

    return-object p0

    .line 131
    :cond_1
    instance-of v1, p0, Lo/LottieAnimationView;

    if-eqz v1, :cond_2

    .line 132
    check-cast p0, Lo/LottieAnimationView;

    invoke-interface {p0}, Lo/LottieAnimationView;->onNavigationEvent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 134
    :cond_2
    instance-of v1, p0, Lo/Rule;

    if-eqz v1, :cond_4

    .line 135
    check-cast p0, Lo/Rule;

    .line 1069
    iget-object v1, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    .line 139
    invoke-virtual {p0, v2}, Lo/Rule;->ICustomTabsCallback(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 140
    invoke-static {v3}, Lo/setFailureListener;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;)Lo/fromAssets;

    move-result-object v3

    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static lambdaFactory$(Lo/setCores;Ljava/util/List;)Ljava/lang/Runnable;
    .locals 1

    .line 4000
    new-instance v0, Lo/setFailureListener;

    invoke-direct {v0, p0, p1}, Lo/setFailureListener;-><init>(Lo/setCores;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 3000
    iget-object v0, p0, Lo/setFailureListener;->arg$1:Lo/setCores;

    iget-object v1, p0, Lo/setFailureListener;->arg$2:Ljava/util/List;

    invoke-static {v0, v1}, Lo/setCores;->lambda$notifyLocalViewChanges$6(Lo/setCores;Ljava/util/List;)V

    return-void
.end method
