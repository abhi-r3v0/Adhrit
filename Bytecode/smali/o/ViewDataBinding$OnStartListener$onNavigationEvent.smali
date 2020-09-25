.class final Lo/ViewDataBinding$OnStartListener$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ViewDataBinding$OnStartListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public final extraCallback:Landroid/graphics/Bitmap;

.field final onPostMessage:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput-object p1, p0, Lo/ViewDataBinding$OnStartListener$onNavigationEvent;->extraCallback:Landroid/graphics/Bitmap;

    .line 918
    iput p2, p0, Lo/ViewDataBinding$OnStartListener$onNavigationEvent;->onPostMessage:I

    return-void
.end method
