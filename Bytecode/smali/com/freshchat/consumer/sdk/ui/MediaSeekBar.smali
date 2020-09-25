.class public Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;
.super Landroid/widget/SeekBar;


# instance fields
.field private hf:Ljava/lang/Boolean;

.field public hg:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;->hf:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;->hf:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;->hf:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;->hf:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;->hf:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/media/MediaPlayer;)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;-><init>(Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;Landroid/media/MediaPlayer;Landroid/view/View;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public dZ()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;->hf:Ljava/lang/Boolean;

    return-void
.end method
