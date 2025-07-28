using {com.logali as logali} from '../db/schema';


service CatalogService {
    entity Product as projection on logali.Products;
}
