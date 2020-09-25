.class final Lo/onItemLoaded;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final ICustomTabsCallback:Landroid/view/View;

.field final asBinder:[I

.field final asInterface:[I

.field final extraCallback:Landroid/widget/TextView;

.field final onMessageChannelReady:Landroid/graphics/Rect;

.field final onNavigationEvent:Landroid/view/WindowManager$LayoutParams;

.field final onPostMessage:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lo/onItemLoaded;->onNavigationEvent:Landroid/view/WindowManager$LayoutParams;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/onItemLoaded;->onMessageChannelReady:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 56
    iput-object v1, p0, Lo/onItemLoaded;->asInterface:[I

    new-array v0, v0, [I

    .line 57
    iput-object v0, p0, Lo/onItemLoaded;->asBinder:[I

    .line 60
    iput-object p1, p0, Lo/onItemLoaded;->onPostMessage:Landroid/content/Context;

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lo/extraCallback$ICustomTabsCallback$Stub;->abc_tooltip:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/onItemLoaded;->ICustomTabsCallback:Landroid/view/View;

    .line 63
    sget v0, Lo/extraCallback$asBinder;->message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/onItemLoaded;->extraCallback:Landroid/widget/TextView;

    .line 65
    iget-object p1, p0, Lo/onItemLoaded;->onNavigationEvent:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    iget-object p1, p0, Lo/onItemLoaded;->onNavigationEvent:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lo/onItemLoaded;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 67
    iget-object p1, p0, Lo/onItemLoaded;->onNavigationEvent:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x3ea

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 68
    iget-object p1, p0, Lo/onItemLoaded;->onNavigationEvent:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 69
    iget-object p1, p0, Lo/onItemLoaded;->onNavigationEvent:Landroid/view/WindowManager$LayoutParams;

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 70
    iget-object p1, p0, Lo/onItemLoaded;->onNavigationEvent:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 71
    iget-object p1, p0, Lo/onItemLoaded;->onNavigationEvent:Landroid/view/WindowManager$LayoutParams;

    sget v0, Lo/extraCallback$onTransact;->Animation_AppCompat_Tooltip:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 72
    iget-object p1, p0, Lo/onItemLoaded;->onNavigationEvent:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method
