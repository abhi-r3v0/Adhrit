.class final Lo/setVerticalOffset$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setVerticalOffset$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setVerticalOffset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setVerticalOffset$extraCallback<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 1

    .line 1092
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
