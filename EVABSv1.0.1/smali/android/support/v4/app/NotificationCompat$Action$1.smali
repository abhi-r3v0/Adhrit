.class final Landroid/support/v4/app/NotificationCompat$Action$1;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroid/support/v4/app/NotificationCompatBase$Action$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;Z)Landroid/support/v4/app/NotificationCompatBase$Action;
    .locals 9

    .line 3604
    new-instance v8, Landroid/support/v4/app/NotificationCompat$Action;

    move-object v5, p5

    check-cast v5, [Landroid/support/v4/app/RemoteInput;

    move-object v6, p6

    check-cast v6, [Landroid/support/v4/app/RemoteInput;

    move-object v0, v8

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;[Landroid/support/v4/app/RemoteInput;Z)V

    return-object v8
.end method

.method public newArray(I)[Landroid/support/v4/app/NotificationCompat$Action;
    .locals 0

    .line 3611
    new-array p1, p1, [Landroid/support/v4/app/NotificationCompat$Action;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Landroid/support/v4/app/NotificationCompatBase$Action;
    .locals 0

    .line 3597
    invoke-virtual {p0, p1}, Landroid/support/v4/app/NotificationCompat$Action$1;->newArray(I)[Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object p1

    return-object p1
.end method
