.class public final Lo/onRelationshipValidationResult$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onRelationshipValidationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public ICustomTabsCallback:Landroid/view/View;

.field public ICustomTabsCallback$Stub:Landroid/content/DialogInterface$OnClickListener;

.field public ICustomTabsCallback$Stub$Proxy:Landroid/content/DialogInterface$OnKeyListener;

.field public ICustomTabsService:Z

.field public ICustomTabsService$Stub:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public ICustomTabsService$Stub$Proxy:I

.field public asBinder:Ljava/lang/CharSequence;

.field public asInterface:Ljava/lang/CharSequence;

.field public extraCallback:Landroid/graphics/drawable/Drawable;

.field public extraCommand:Landroid/view/View;

.field public getInterfaceDescriptor:[Ljava/lang/CharSequence;

.field public mayLaunchUrl:[Z

.field public newSession:Landroid/widget/ListAdapter;

.field public final onMessageChannelReady:Landroid/view/LayoutInflater;

.field public onNavigationEvent:Ljava/lang/CharSequence;

.field public final onPostMessage:Landroid/content/Context;

.field public onRelationshipValidationResult:Landroid/content/DialogInterface$OnClickListener;

.field public onTransact:Ljava/lang/CharSequence;

.field public postMessage:Z

.field public requestPostMessageChannel:Landroid/content/DialogInterface$OnClickListener;

.field public updateVisuals:Z

.field public warmup:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 901
    iput v0, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsService$Stub$Proxy:I

    .line 925
    iput-object p1, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onPostMessage:Landroid/content/Context;

    const/4 v0, 0x1

    .line 926
    iput-boolean v0, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsService:Z

    const-string v0, "layout_inflater"

    .line 927
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onMessageChannelReady:Landroid/view/LayoutInflater;

    return-void
.end method
