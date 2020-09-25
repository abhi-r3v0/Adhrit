.class final Lo/PlaybackStateCompat$onRelationshipValidationResult;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PlaybackStateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onRelationshipValidationResult"
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/PlaybackStateCompat;


# direct methods
.method constructor <init>(Lo/PlaybackStateCompat;)V
    .locals 0

    .line 3092
    iput-object p1, p0, Lo/PlaybackStateCompat$onRelationshipValidationResult;->extraCallback:Lo/PlaybackStateCompat;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 3097
    iget-object v0, p0, Lo/PlaybackStateCompat$onRelationshipValidationResult;->extraCallback:Lo/PlaybackStateCompat;

    invoke-virtual {v0}, Lo/PlaybackStateCompat;->extraCallback()V

    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .line 3101
    iget-object v0, p0, Lo/PlaybackStateCompat$onRelationshipValidationResult;->extraCallback:Lo/PlaybackStateCompat;

    invoke-virtual {v0}, Lo/PlaybackStateCompat;->extraCallback()V

    return-void
.end method
