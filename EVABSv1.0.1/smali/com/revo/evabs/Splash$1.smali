.class Lcom/revo/evabs/Splash$1;
.super Ljava/lang/Object;
.source "Splash.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revo/evabs/Splash;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revo/evabs/Splash;


# direct methods
.method constructor <init>(Lcom/revo/evabs/Splash;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/revo/evabs/Splash$1;->this$0:Lcom/revo/evabs/Splash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 42
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/revo/evabs/Splash$1;->this$0:Lcom/revo/evabs/Splash;

    const-class v2, Lcom/revo/evabs/ChallengeList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    iget-object v1, p0, Lcom/revo/evabs/Splash$1;->this$0:Lcom/revo/evabs/Splash;

    invoke-virtual {v1, v0}, Lcom/revo/evabs/Splash;->startActivity(Landroid/content/Intent;)V

    .line 44
    iget-object v0, p0, Lcom/revo/evabs/Splash$1;->this$0:Lcom/revo/evabs/Splash;

    invoke-virtual {v0}, Lcom/revo/evabs/Splash;->finish()V

    return-void
.end method
