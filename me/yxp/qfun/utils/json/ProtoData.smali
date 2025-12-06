.class public Lme/yxp/qfun/utils/json/ProtoData;
.super Ljava/lang/Object;
.source "ProtoData.java"


# static fields
.field private static final WIRETYPE_FIXED32:I = 0x5

.field private static final WIRETYPE_FIXED64:I = 0x1

.field private static final WIRETYPE_LENGTH_DELIMITED:I = 0x2

.field private static final WIRETYPE_VARINT:I


# instance fields
.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8o-vO160nbymAUfCg8gGQANZf8E(Ljava/lang/Integer;)Ljava/util/List;
    .registers 1

    .line 69
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lme/yxp/qfun/utils/json/ProtoData;->mValues:Ljava/util/HashMap;

    return-void
.end method

.method private encodeValue(ILjava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6

    .line 162
    instance-of p0, p2, Ljava/lang/Long;

    if-eqz p0, :cond_e

    .line 163
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    return-void

    .line 164
    :cond_e
    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_1c

    .line 165
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p3, p1, p0}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    return-void

    .line 166
    :cond_1c
    instance-of p0, p2, Lme/yxp/qfun/utils/json/ProtoData;

    if-eqz p0, :cond_2a

    .line 167
    check-cast p2, Lme/yxp/qfun/utils/json/ProtoData;

    invoke-virtual {p2}, Lme/yxp/qfun/utils/json/ProtoData;->toBytes()[B

    move-result-object p0

    .line 168
    invoke-virtual {p3, p1, p0}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    return-void

    .line 169
    :cond_2a
    instance-of p0, p2, Ljava/lang/Integer;

    if-eqz p0, :cond_37

    .line 170
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p3, p1, p0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_37
    return-void
.end method

.method private getUnpPackage([B)[B
    .registers 3

    if-eqz p1, :cond_12

    .line 176
    array-length p0, p1

    const/4 v0, 0x4

    if-ge p0, v0, :cond_7

    goto :goto_12

    :cond_7
    const/4 p0, 0x0

    .line 180
    aget-byte p0, p1, p0

    if-nez p0, :cond_12

    .line 181
    array-length p0, p1

    invoke-static {p1, v0, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_12
    :goto_12
    return-object p1
.end method

.method private processJsonArray(ILorg/json/JSONArray;)V
    .registers 6

    const/4 v0, 0x0

    .line 52
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 54
    :try_start_7
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 55
    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_1d

    .line 56
    new-instance v2, Lme/yxp/qfun/utils/json/ProtoData;

    invoke-direct {v2}, Lme/yxp/qfun/utils/json/ProtoData;-><init>()V

    .line 57
    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lme/yxp/qfun/utils/json/ProtoData;->fromJSON(Lorg/json/JSONObject;)V

    .line 58
    invoke-direct {p0, p1, v2}, Lme/yxp/qfun/utils/json/ProtoData;->putValue(ILjava/lang/Object;)V

    goto :goto_20

    .line 60
    :cond_1d
    invoke-direct {p0, p1, v1}, Lme/yxp/qfun/utils/json/ProtoData;->putValue(ILjava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_20} :catch_20

    :catch_20
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method

.method private processJsonValue(ILjava/lang/Object;)V
    .registers 4

    .line 40
    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_12

    .line 41
    new-instance v0, Lme/yxp/qfun/utils/json/ProtoData;

    invoke-direct {v0}, Lme/yxp/qfun/utils/json/ProtoData;-><init>()V

    .line 42
    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {v0, p2}, Lme/yxp/qfun/utils/json/ProtoData;->fromJSON(Lorg/json/JSONObject;)V

    .line 43
    invoke-direct {p0, p1, v0}, Lme/yxp/qfun/utils/json/ProtoData;->putValue(ILjava/lang/Object;)V

    return-void

    .line 44
    :cond_12
    instance-of v0, p2, Lorg/json/JSONArray;

    if-eqz v0, :cond_1c

    .line 45
    check-cast p2, Lorg/json/JSONArray;

    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/utils/json/ProtoData;->processJsonArray(ILorg/json/JSONArray;)V

    return-void

    .line 47
    :cond_1c
    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/utils/json/ProtoData;->putValue(ILjava/lang/Object;)V

    return-void
.end method

.method private processLengthDelimited(ILcom/google/protobuf/CodedInputStream;)V
    .registers 4

    .line 107
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object p2

    .line 109
    :try_start_4
    new-instance v0, Lme/yxp/qfun/utils/json/ProtoData;

    invoke-direct {v0}, Lme/yxp/qfun/utils/json/ProtoData;-><init>()V

    .line 110
    invoke-virtual {v0, p2}, Lme/yxp/qfun/utils/json/ProtoData;->fromBytes([B)V

    .line 111
    invoke-direct {p0, p1, v0}, Lme/yxp/qfun/utils/json/ProtoData;->putValue(ILjava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_10

    return-void

    .line 113
    :catch_10
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, p1, v0}, Lme/yxp/qfun/utils/json/ProtoData;->putValue(ILjava/lang/Object;)V

    return-void
.end method

.method private processWireType(IILcom/google/protobuf/CodedInputStream;)V
    .registers 5

    if-eqz p2, :cond_3c

    const/4 v0, 0x1

    if-eq p2, v0, :cond_30

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2c

    const/4 v0, 0x5

    if-eq p2, v0, :cond_20

    .line 101
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown wireType: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/utils/json/ProtoData;->putValue(ILjava/lang/Object;)V

    return-void

    .line 98
    :cond_20
    invoke-virtual {p3}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/utils/json/ProtoData;->putValue(ILjava/lang/Object;)V

    return-void

    .line 95
    :cond_2c
    invoke-direct {p0, p1, p3}, Lme/yxp/qfun/utils/json/ProtoData;->processLengthDelimited(ILcom/google/protobuf/CodedInputStream;)V

    return-void

    .line 92
    :cond_30
    invoke-virtual {p3}, Lcom/google/protobuf/CodedInputStream;->readRawVarint64()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/utils/json/ProtoData;->putValue(ILjava/lang/Object;)V

    return-void

    .line 89
    :cond_3c
    invoke-virtual {p3}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/utils/json/ProtoData;->putValue(ILjava/lang/Object;)V

    return-void
.end method

.method private putValue(ILjava/lang/Object;)V
    .registers 4

    .line 69
    iget-object p0, p0, Lme/yxp/qfun/utils/json/ProtoData;->mValues:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lme/yxp/qfun/utils/json/ProtoData$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lme/yxp/qfun/utils/json/ProtoData$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 70
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private valueToJsonObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 136
    instance-of p0, p1, Lme/yxp/qfun/utils/json/ProtoData;

    if-eqz p0, :cond_b

    .line 137
    check-cast p1, Lme/yxp/qfun/utils/json/ProtoData;

    invoke-virtual {p1}, Lme/yxp/qfun/utils/json/ProtoData;->toJSON()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_b
    return-object p1
.end method


# virtual methods
.method public fromBytes([B)V
    .registers 4

    .line 74
    invoke-direct {p0, p1}, Lme/yxp/qfun/utils/json/ProtoData;->getUnpPackage([B)[B

    move-result-object p1

    .line 75
    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream;->newInstance([B)Lcom/google/protobuf/CodedInputStream;

    move-result-object p1

    .line 77
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v0

    if-lez v0, :cond_1a

    .line 78
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    .line 82
    invoke-direct {p0, v1, v0, p1}, Lme/yxp/qfun/utils/json/ProtoData;->processWireType(IILcom/google/protobuf/CodedInputStream;)V

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public fromJSON(Lorg/json/JSONObject;)V
    .registers 5

    .line 27
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 28
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 31
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 32
    invoke-direct {p0, v2, v1}, Lme/yxp/qfun/utils/json/ProtoData;->processJsonValue(ILjava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_4

    :catch_1c
    :cond_1c
    return-void
.end method

.method public toBytes()[B
    .registers 8

    .line 144
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 145
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 148
    :try_start_9
    iget-object v2, p0, Lme/yxp/qfun/utils/json/ProtoData;->mValues:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 149
    iget-object v4, p0, Lme/yxp/qfun/utils/json/ProtoData;->mValues:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 150
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 151
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6, v5, v1}, Lme/yxp/qfun/utils/json/ProtoData;->encodeValue(ILjava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V

    goto :goto_2b

    .line 154
    :cond_3d
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->flush()V

    .line 155
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_44} :catch_45

    return-object p0

    :catch_45
    const/4 p0, 0x0

    .line 157
    new-array p0, p0, [B

    return-object p0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .registers 7

    .line 118
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 119
    iget-object v1, p0, Lme/yxp/qfun/utils/json/ProtoData;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 120
    iget-object v3, p0, Lme/yxp/qfun/utils/json/ProtoData;->mValues:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 121
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4d

    .line 122
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 123
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 124
    invoke-direct {p0, v5}, Lme/yxp/qfun/utils/json/ProtoData;->valueToJsonObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_33

    .line 126
    :cond_45
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f

    :cond_4d
    const/4 v4, 0x0

    .line 128
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 129
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3}, Lme/yxp/qfun/utils/json/ProtoData;->valueToJsonObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f

    :cond_5e
    return-object v0
.end method
