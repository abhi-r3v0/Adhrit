.class public Lo/setProgress;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setProgress$extraCallback;
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/setProgress;


# instance fields
.field public final onNavigationEvent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lo/setProgress;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1}, Lo/setProgress;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/setProgress;->onPostMessage:Lo/setProgress;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lo/setProgress;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1064
    iget-object v0, p0, Lo/setProgress;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method
