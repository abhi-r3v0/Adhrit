.class public Lo/s$a$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/s$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostMessage(Lo/allow;Lo/CheckoutBuilder$PolingRemoteConfig;)Lo/s$a;
    .locals 1

    .line 83
    new-instance v0, Lo/s$a;

    invoke-direct {v0, p1, p2}, Lo/s$a;-><init>(Lo/allow;Lo/CheckoutBuilder$PolingRemoteConfig;)V

    return-object v0
.end method
