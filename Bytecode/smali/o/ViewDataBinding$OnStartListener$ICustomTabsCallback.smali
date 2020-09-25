.class final Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ViewDataBinding$OnStartListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public final extraCallback:Landroid/graphics/Bitmap;

.field final onPostMessage:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    iput-object p1, p0, Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;->extraCallback:Landroid/graphics/Bitmap;

    .line 894
    iput p2, p0, Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;->onPostMessage:I

    return-void
.end method
