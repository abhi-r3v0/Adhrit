.class public final Lo/resolveKeyPath$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/invalidateSpanInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/resolveKeyPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "anim://"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/resolveKeyPath$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lo/resolveKeyPath$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method
