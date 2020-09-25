.class final Lo/ImageRequestBuilder$BuilderException;
.super Lo/filterByTags;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/filterByTags;"
    }
.end annotation


# instance fields
.field private final synthetic onNavigationEvent:Lo/SoLoader;


# direct methods
.method private constructor <init>(Lo/SoLoader;)V
    .locals 1

    iput-object p1, p0, Lo/ImageRequestBuilder$BuilderException;->onNavigationEvent:Lo/SoLoader;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/filterByTags;-><init>(Lo/SoLoader;Lo/HeifExifUtil$HeifExifUtilAndroidN;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/SoLoader;Lo/HeifExifUtil$HeifExifUtilAndroidN;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/ImageRequestBuilder$BuilderException;-><init>(Lo/SoLoader;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lo/LocalExifThumbnailProducer$Api24Utils;

    iget-object v1, p0, Lo/ImageRequestBuilder$BuilderException;->onNavigationEvent:Lo/SoLoader;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/LocalExifThumbnailProducer$Api24Utils;-><init>(Lo/SoLoader;Lo/HeifExifUtil$HeifExifUtilAndroidN;)V

    return-object v0
.end method
