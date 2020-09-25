.class public Lo/addExperimentToAnalytics;
.super Landroidx/appcompat/widget/Toolbar;
.source ""


# static fields
.field private static final onNavigationEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    sget v0, Lo/toStringMap$onRelationshipValidationResult;->Widget_MaterialComponents_Toolbar:I

    sput v0, Lo/addExperimentToAnalytics;->onNavigationEvent:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lo/addExperimentToAnalytics;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 68
    sget v0, Lo/toStringMap$extraCallback;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lo/addExperimentToAnalytics;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 72
    sget v0, Lo/addExperimentToAnalytics;->onNavigationEvent:I

    invoke-static {p1, p2, p3, v0}, Lo/signInWithCustomToken;->onMessageChannelReady(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1095
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1096
    instance-of p3, p2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p3, :cond_4

    .line 1099
    :cond_0
    new-instance p3, Lo/setFirebaseUIVersion;

    invoke-direct {p3}, Lo/setFirebaseUIVersion;-><init>()V

    if-eqz p2, :cond_1

    .line 1100
    check-cast p2, Landroid/graphics/drawable/ColorDrawable;

    .line 1101
    invoke-virtual {p2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 1102
    :goto_0
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 1288
    iget-object v0, p3, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    if-eq v0, p2, :cond_2

    .line 1289
    iget-object v0, p3, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object p2, v0, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    .line 1290
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p2

    invoke-virtual {p3, p2}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    .line 1585
    :cond_2
    iget-object p2, p3, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    new-instance v0, Lo/getUsername;

    invoke-direct {v0, p1}, Lo/getUsername;-><init>(Landroid/content/Context;)V

    iput-object v0, p2, Lo/setFirebaseUIVersion$extraCallback;->onPostMessage:Lo/getUsername;

    .line 1586
    invoke-virtual {p3}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    .line 1104
    invoke-static {p0}, Lo/unregisterCallbackListener;->mayLaunchUrl(Landroid/view/View;)F

    move-result p1

    .line 1651
    iget-object p2, p3, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget p2, p2, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_3

    .line 1652
    iget-object p2, p3, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput p1, p2, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    .line 1653
    invoke-virtual {p3}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    .line 1105
    :cond_3
    invoke-static {p0, p3}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 81
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    .line 83
    invoke-static {p0}, Lo/extraCallback;->extraCallback(Landroid/view/View;)V

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setElevation(F)V

    .line 91
    invoke-static {p0, p1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;F)V

    return-void
.end method
