.class Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompatApi23$CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onTransact"
.end annotation


# instance fields
.field ICustomTabsCallback:Landroid/content/res/ColorStateList;

.field ICustomTabsCallback$Stub:Z

.field ICustomTabsService:Z

.field asBinder:Landroid/content/res/ColorStateList;

.field asInterface:I

.field extraCallback:Z

.field getInterfaceDescriptor:Landroid/graphics/Paint;

.field onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

.field onNavigationEvent:Landroid/graphics/PorterDuff$Mode;

.field onPostMessage:I

.field onRelationshipValidationResult:Landroid/graphics/PorterDuff$Mode;

.field onTransact:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1121
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 1015
    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    .line 1016
    sget-object v0, Lo/MediaSessionCompatApi23$CallbackProxy;->extraCallback:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onNavigationEvent:Landroid/graphics/PorterDuff$Mode;

    .line 1122
    new-instance v0, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    invoke-direct {v0}, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;-><init>()V

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    return-void
.end method

.method public constructor <init>(Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;)V
    .locals 3

    .line 1033
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 1015
    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    .line 1016
    sget-object v0, Lo/MediaSessionCompatApi23$CallbackProxy;->extraCallback:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onNavigationEvent:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_2

    .line 1035
    iget v0, p1, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onPostMessage:I

    iput v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onPostMessage:I

    .line 1036
    new-instance v0, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    iget-object v1, p1, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    invoke-direct {v0, v1}, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;-><init>(Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;)V

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    .line 1037
    iget-object v0, p1, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    iget-object v0, v0, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->extraCallback:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    iget-object v2, v2, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->extraCallback:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->extraCallback:Landroid/graphics/Paint;

    .line 1040
    :cond_0
    iget-object v0, p1, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    iget-object v0, v0, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->ICustomTabsCallback:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 1041
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    iget-object v2, v2, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->ICustomTabsCallback:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->ICustomTabsCallback:Landroid/graphics/Paint;

    .line 1043
    :cond_1
    iget-object v0, p1, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    .line 1044
    iget-object v0, p1, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onNavigationEvent:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onNavigationEvent:Landroid/graphics/PorterDuff$Mode;

    .line 1045
    iget-boolean p1, p1, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->extraCallback:Z

    iput-boolean p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->extraCallback:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(II)Z
    .locals 1

    .line 1093
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onTransact:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onTransact:Landroid/graphics/Bitmap;

    .line 1094
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public extraCallback(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V
    .locals 2

    .line 1052
    invoke-virtual {p0, p2}, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onNavigationEvent(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;

    move-result-object p2

    .line 1053
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onTransact:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public extraCallback()Z
    .locals 1

    .line 1143
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    invoke-virtual {v0}, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->onMessageChannelReady()Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 1139
    iget v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onPostMessage:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1128
    new-instance v0, Lo/MediaSessionCompatApi23$CallbackProxy;

    invoke-direct {v0, p0}, Lo/MediaSessionCompatApi23$CallbackProxy;-><init>(Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1134
    new-instance p1, Lo/MediaSessionCompatApi23$CallbackProxy;

    invoke-direct {p1, p0}, Lo/MediaSessionCompatApi23$CallbackProxy;-><init>(Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;)V

    return-object p1
.end method

.method public onMessageChannelReady(II)V
    .locals 3

    .line 1078
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onTransact:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1079
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onTransact:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1080
    iget-object v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, p2, v2}, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->onMessageChannelReady(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method public onMessageChannelReady()Z
    .locals 2

    .line 1101
    iget-boolean v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsService:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->asBinder:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onRelationshipValidationResult:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onNavigationEvent:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsCallback$Stub:Z

    iget-boolean v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->extraCallback:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->asInterface:I

    iget-object v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    .line 1105
    invoke-virtual {v1}, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->getRootAlpha()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onNavigationEvent(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;
    .locals 2

    .line 1064
    invoke-virtual {p0}, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1068
    :cond_0
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->getInterfaceDescriptor:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 1069
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->getInterfaceDescriptor:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 1070
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1072
    :cond_1
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->getInterfaceDescriptor:Landroid/graphics/Paint;

    iget-object v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    invoke-virtual {v1}, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->getRootAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1073
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->getInterfaceDescriptor:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1074
    iget-object p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->getInterfaceDescriptor:Landroid/graphics/Paint;

    return-object p1
.end method

.method public onNavigationEvent(II)V
    .locals 1

    .line 1084
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onTransact:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsCallback(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1085
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onTransact:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 1087
    iput-boolean p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsService:Z

    :cond_1
    return-void
.end method

.method public onNavigationEvent()Z
    .locals 2

    .line 1057
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    invoke-virtual {v0}, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->getRootAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onNavigationEvent([I)Z
    .locals 1

    .line 1147
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->extraCallback([I)Z

    move-result p1

    .line 1148
    iget-boolean v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsService:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsService:Z

    return p1
.end method

.method public onPostMessage()V
    .locals 1

    .line 1114
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->asBinder:Landroid/content/res/ColorStateList;

    .line 1115
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onNavigationEvent:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onRelationshipValidationResult:Landroid/graphics/PorterDuff$Mode;

    .line 1116
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->onMessageChannelReady:Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;

    invoke-virtual {v0}, Lo/MediaSessionCompatApi23$CallbackProxy$asInterface;->getRootAlpha()I

    move-result v0

    iput v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->asInterface:I

    .line 1117
    iget-boolean v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->extraCallback:Z

    iput-boolean v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsCallback$Stub:Z

    const/4 v0, 0x0

    .line 1118
    iput-boolean v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onTransact;->ICustomTabsService:Z

    return-void
.end method
