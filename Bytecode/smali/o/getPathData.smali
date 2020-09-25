.class public final Lo/getPathData;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final onNavigationEvent:Landroid/webkit/MimeTypeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 17
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    sput-object v0, Lo/getPathData;->onNavigationEvent:Landroid/webkit/MimeTypeMap;

    const-string v0, "heic"

    const-string v1, "image/heic"

    const-string v2, "heif"

    const-string v3, "image/heif"

    .line 20
    invoke-static {v3, v2, v1, v0}, Lo/getLocalMatrix;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 25
    invoke-static {v2, v3, v0, v1}, Lo/getLocalMatrix;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lo/getPathData;->extraCallback:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lo/getPathData;->extraCallback:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 42
    :cond_0
    sget-object v0, Lo/getPathData;->onNavigationEvent:Landroid/webkit/MimeTypeMap;

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
