.class Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderBaseImpl;
.super Ljava/lang/Object;
.source "TaskStackBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/TaskStackBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskStackBuilderBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPendingIntent(Landroid/content/Context;[Landroid/content/Intent;IILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 2

    .line 79
    new-instance p5, Landroid/content/Intent;

    const/4 v0, 0x0

    aget-object v1, p2, v0

    invoke-direct {p5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v1, 0x1000c000

    invoke-virtual {p5, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p5

    aput-object p5, p2, v0

    .line 81
    invoke-static {p1, p3, p2, p4}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method
