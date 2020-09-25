.class final Lo/getScaleY$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPivotX;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getScaleY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPivotX<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1043
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method
