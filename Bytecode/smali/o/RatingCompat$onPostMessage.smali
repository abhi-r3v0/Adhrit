.class final Lo/RatingCompat$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RatingCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# instance fields
.field final extraCallback:Landroid/graphics/Typeface;

.field final onNavigationEvent:I


# direct methods
.method constructor <init>(Landroid/graphics/Typeface;I)V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lo/RatingCompat$onPostMessage;->extraCallback:Landroid/graphics/Typeface;

    .line 213
    iput p2, p0, Lo/RatingCompat$onPostMessage;->onNavigationEvent:I

    return-void
.end method
