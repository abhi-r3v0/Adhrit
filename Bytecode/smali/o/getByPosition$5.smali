.class final Lo/getByPosition$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPivotX;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getByPosition;-><init>(Lo/getByPosition$extraCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPivotX<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getByPosition;


# direct methods
.method constructor <init>(Lo/getByPosition;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lo/getByPosition$5;->onNavigationEvent:Lo/getByPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1051
    iget-object v0, p0, Lo/getByPosition$5;->onNavigationEvent:Lo/getByPosition;

    .line 2026
    iget-object v0, v0, Lo/getByPosition;->newSession:Landroid/content/Context;

    .line 1051
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
