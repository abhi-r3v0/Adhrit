.class final Lo/getHostPrefix$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setRotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getHostPrefix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setRotation<",
        "Lo/getHostPrefix;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 382
    check-cast p1, Lo/getHostPrefix;

    if-eqz p1, :cond_0

    .line 2150
    iget-object p1, p1, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
