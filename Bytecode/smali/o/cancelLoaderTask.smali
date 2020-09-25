.class public final Lo/cancelLoaderTask;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static mayLaunchUrl:Lo/setFailureListener$extraCallback;

.field private static updateVisuals:Lo/setFailureListener$extraCallback;


# instance fields
.field ICustomTabsCallback:I

.field ICustomTabsCallback$Stub:Landroid/graphics/drawable/Drawable;

.field ICustomTabsCallback$Stub$Proxy:Lo/setFailureListener$extraCallback;

.field ICustomTabsService:Landroid/graphics/drawable/Drawable;

.field asBinder:Landroid/graphics/drawable/Drawable;

.field asInterface:Lo/setFailureListener$extraCallback;

.field extraCallback:Landroid/content/res/Resources;

.field extraCommand:Lo/hasMatte;

.field getInterfaceDescriptor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field newSession:Landroid/graphics/drawable/Drawable;

.field onMessageChannelReady:Lo/setFailureListener$extraCallback;

.field onNavigationEvent:Landroid/graphics/drawable/Drawable;

.field public onPostMessage:F

.field onRelationshipValidationResult:Landroid/graphics/drawable/Drawable;

.field onTransact:Lo/setFailureListener$extraCallback;

.field warmup:Lo/setFailureListener$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget-object v0, Lo/setFailureListener$extraCallback;->ICustomTabsService:Lo/setFailureListener$extraCallback;

    sput-object v0, Lo/cancelLoaderTask;->mayLaunchUrl:Lo/setFailureListener$extraCallback;

    .line 36
    sget-object v0, Lo/setFailureListener$extraCallback;->ICustomTabsCallback$Stub$Proxy:Lo/setFailureListener$extraCallback;

    sput-object v0, Lo/cancelLoaderTask;->updateVisuals:Lo/setFailureListener$extraCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lo/cancelLoaderTask;->extraCallback:Landroid/content/res/Resources;

    const/16 p1, 0x12c

    .line 1079
    iput p1, p0, Lo/cancelLoaderTask;->ICustomTabsCallback:I

    const/4 p1, 0x0

    .line 1081
    iput p1, p0, Lo/cancelLoaderTask;->onPostMessage:F

    const/4 p1, 0x0

    .line 1083
    iput-object p1, p0, Lo/cancelLoaderTask;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    .line 1084
    sget-object v0, Lo/cancelLoaderTask;->mayLaunchUrl:Lo/setFailureListener$extraCallback;

    iput-object v0, p0, Lo/cancelLoaderTask;->onMessageChannelReady:Lo/setFailureListener$extraCallback;

    .line 1086
    iput-object p1, p0, Lo/cancelLoaderTask;->ICustomTabsCallback$Stub:Landroid/graphics/drawable/Drawable;

    .line 1087
    iput-object v0, p0, Lo/cancelLoaderTask;->onTransact:Lo/setFailureListener$extraCallback;

    .line 1089
    iput-object p1, p0, Lo/cancelLoaderTask;->onRelationshipValidationResult:Landroid/graphics/drawable/Drawable;

    .line 1090
    iput-object v0, p0, Lo/cancelLoaderTask;->asInterface:Lo/setFailureListener$extraCallback;

    .line 1092
    iput-object p1, p0, Lo/cancelLoaderTask;->asBinder:Landroid/graphics/drawable/Drawable;

    .line 1093
    iput-object v0, p0, Lo/cancelLoaderTask;->warmup:Lo/setFailureListener$extraCallback;

    .line 1095
    sget-object v0, Lo/cancelLoaderTask;->updateVisuals:Lo/setFailureListener$extraCallback;

    iput-object v0, p0, Lo/cancelLoaderTask;->ICustomTabsCallback$Stub$Proxy:Lo/setFailureListener$extraCallback;

    .line 1100
    iput-object p1, p0, Lo/cancelLoaderTask;->newSession:Landroid/graphics/drawable/Drawable;

    .line 1101
    iput-object p1, p0, Lo/cancelLoaderTask;->getInterfaceDescriptor:Ljava/util/List;

    .line 1102
    iput-object p1, p0, Lo/cancelLoaderTask;->ICustomTabsService:Landroid/graphics/drawable/Drawable;

    .line 1104
    iput-object p1, p0, Lo/cancelLoaderTask;->extraCommand:Lo/hasMatte;

    return-void
.end method


# virtual methods
.method public final onPostMessage()Lo/getComposition;
    .locals 2

    .line 1607
    iget-object v0, p0, Lo/cancelLoaderTask;->getInterfaceDescriptor:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1608
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2215
    throw v0

    .line 617
    :cond_1
    new-instance v0, Lo/getComposition;

    invoke-direct {v0, p0}, Lo/getComposition;-><init>(Lo/cancelLoaderTask;)V

    return-object v0
.end method
