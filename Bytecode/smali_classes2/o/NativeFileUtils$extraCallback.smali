.class public Lo/NativeFileUtils$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/NativeFileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# instance fields
.field public final id:I

.field public final notificationBuilder:Lo/setSubtitle$ICustomTabsCallback;

.field public final tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/setSubtitle$ICustomTabsCallback;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/NativeFileUtils$extraCallback;->notificationBuilder:Lo/setSubtitle$ICustomTabsCallback;

    .line 3
    iput-object p2, p0, Lo/NativeFileUtils$extraCallback;->tag:Ljava/lang/String;

    .line 4
    iput p3, p0, Lo/NativeFileUtils$extraCallback;->id:I

    return-void
.end method
