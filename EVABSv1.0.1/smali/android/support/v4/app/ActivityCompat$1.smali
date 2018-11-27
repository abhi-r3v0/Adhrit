.class final Landroid/support/v4/app/ActivityCompat$1;
.super Ljava/lang/Object;
.source "ActivityCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$permissions:[Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 0

    .line 397
    iput-object p1, p0, Landroid/support/v4/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;

    iput-object p2, p0, Landroid/support/v4/app/ActivityCompat$1;->val$activity:Landroid/app/Activity;

    iput p3, p0, Landroid/support/v4/app/ActivityCompat$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 400
    iget-object v0, p0, Landroid/support/v4/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v0, v0

    new-array v0, v0, [I

    .line 402
    iget-object v2, p0, Landroid/support/v4/app/ActivityCompat$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 403
    iget-object v3, p0, Landroid/support/v4/app/ActivityCompat$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 405
    iget-object v4, p0, Landroid/support/v4/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;

    array-length v4, v4

    :goto_0
    if-ge v1, v4, :cond_0

    .line 407
    iget-object v5, p0, Landroid/support/v4/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v2, v5, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/ActivityCompat$1;->val$activity:Landroid/app/Activity;

    check-cast v1, Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;

    iget v2, p0, Landroid/support/v4/app/ActivityCompat$1;->val$requestCode:I

    iget-object v3, p0, Landroid/support/v4/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method
